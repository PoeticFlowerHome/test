/*
 *  Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 *  Copyright (C) 2014-2014 - Scilab Enterprises - Clement DAVID
 *
 *  This file must be used under the terms of the CeCILL.
 *  This source file is licensed as described in the file COPYING, which
 *  you should have received as part of this distribution.  The terms
 *  are also available at
 *  http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
 *
 */

#include <string>
#include <vector>
#include <map>
#include <memory>
#include <utility>
#include <algorithm>

#include "Controller.hxx"

#include "LoggerView.hxx"

namespace org_scilab_modules_scicos
{

/*
 * Implement SharedData methods
 */
Controller::SharedData::SharedData() :
    model(), allNamedViews(), allViews()
{
}

Controller::SharedData::~SharedData()
{
    for (view_set_t::iterator iter = m_instance.allViews.begin(); iter != m_instance.allViews.end(); ++iter)
    {
        delete *iter;
    }
}

Controller::SharedData Controller::m_instance;

View* Controller::register_view(const std::string& name, View* v)
{
    m_instance.allNamedViews.push_back(name);
    m_instance.allViews.push_back(v);
    return v;
}

void Controller::unregister_view(View* v)
{
    view_set_t::iterator it = std::find(m_instance.allViews.begin(), m_instance.allViews.end(), v);
    if (it != m_instance.allViews.end())
    {
        int d = std::distance(m_instance.allViews.begin(), it);

        m_instance.allNamedViews.erase(m_instance.allNamedViews.begin() + d);
        m_instance.allViews.erase(m_instance.allViews.begin() + d);
    }
}

View* Controller::unregister_view(const std::string& name)
{
    View* view = nullptr;

    view_name_set_t::iterator it = std::find(m_instance.allNamedViews.begin(), m_instance.allNamedViews.end(), name);
    if (it != m_instance.allNamedViews.end())
    {
        int d = std::distance(m_instance.allNamedViews.begin(), it);

        view = *(m_instance.allViews.begin() + d);
        m_instance.allNamedViews.erase(m_instance.allNamedViews.begin() + d);
        m_instance.allViews.erase(m_instance.allViews.begin() + d);
    }

    return view;
}

View* Controller::look_for_view(const std::string& name)
{
    View* view = nullptr;

    view_name_set_t::iterator it = std::find(m_instance.allNamedViews.begin(), m_instance.allNamedViews.end(), name);
    if (it != m_instance.allNamedViews.end())
    {
        int d = std::distance(m_instance.allNamedViews.begin(), it);

        view = *(m_instance.allViews.begin() + d);
    }

    return view;
}

Controller::Controller()
{
}

Controller::~Controller()
{
}

ScicosID Controller::createObject(kind_t k)
{
    ScicosID id = m_instance.model.createObject(k);

    for (view_set_t::iterator iter = m_instance.allViews.begin(); iter != m_instance.allViews.end(); ++iter)
    {
        (*iter)->objectCreated(id, k);
    }

    return id;
}

void Controller::deleteObject(ScicosID uid)
{
    auto initial = getObject(uid);
    const kind_t k = initial->kind();

    // disconnect / remove references of weak connected objects and decrement the reference count of all strongly connected objects.
    if (k == ANNOTATION)
    {
        unlinkVector(uid, k, PARENT_DIAGRAM, CHILDREN);
        // RELATED_TO is not referenced back
    }
    else if (k == BLOCK)
    {
        unlinkVector(uid, k, PARENT_DIAGRAM, CHILDREN);
        deleteVector(uid, k, INPUTS);
        deleteVector(uid, k, OUTPUTS);
        deleteVector(uid, k, EVENT_INPUTS);
        deleteVector(uid, k, EVENT_OUTPUTS);
        unlinkVector(uid, k, PARENT_BLOCK, CHILDREN);
        deleteVector(uid, k, CHILDREN);
        // FIXME what about REFERENCED_PORT ?
    }
    else if (k == DIAGRAM)
    {
        deleteVector(uid, k, CHILDREN);
    }
    else if (k == LINK)
    {
        unlinkVector(uid, k, PARENT_DIAGRAM, CHILDREN);
        unlinkVector(uid, k, SOURCE_PORT, CONNECTED_SIGNALS);
        unlinkVector(uid, k, DESTINATION_PORT, CONNECTED_SIGNALS);
    }
    else if (k == PORT)
    {
        unlinkVector(uid, k, SOURCE_BLOCK, INPUTS);
        unlinkVector(uid, k, SOURCE_BLOCK, OUTPUTS);
        unlinkVector(uid, k, SOURCE_BLOCK, EVENT_INPUTS);
        unlinkVector(uid, k, SOURCE_BLOCK, EVENT_OUTPUTS);

        unlink(uid, k, CONNECTED_SIGNALS, SOURCE_PORT);
        unlink(uid, k, CONNECTED_SIGNALS, DESTINATION_PORT);
    }

    // delete the object
    m_instance.model.deleteObject(uid);

    for (view_set_t::iterator iter = m_instance.allViews.begin(); iter != m_instance.allViews.end(); ++iter)
    {
        (*iter)->objectDeleted(uid, k);
    }
}

void Controller::unlinkVector(ScicosID uid, kind_t k, object_properties_t uid_prop, object_properties_t ref_prop)
{
    ScicosID v;
    getObjectProperty(uid, k, uid_prop, v);
    if (v != 0)
    {
        auto o = getObject(v);

        std::vector<ScicosID> children;
        getObjectProperty(o->id(), o->kind(), ref_prop, children);

        std::vector<ScicosID>::iterator it = std::find(children.begin(), children.end(), uid);
        if (it != children.end())
        {
            children.erase(it);
        }

        setObjectProperty(o->id(), o->kind(), ref_prop, children);
    }
}

void Controller::unlink(ScicosID uid, kind_t k, object_properties_t uid_prop, object_properties_t ref_prop)
{
    ScicosID v;
    getObjectProperty(uid, k, uid_prop, v);
    if (v != 0)
    {
        auto o = getObject(v);
        // Find which end of the link is connected to the port
        ScicosID connected_port;
        getObjectProperty(o->id(), o->kind(), ref_prop, connected_port);
        if (connected_port == uid)
        {
            setObjectProperty(o->id(), o->kind(), ref_prop, 0ll);
        }
    }
}

void Controller::deleteVector(ScicosID uid, kind_t k, object_properties_t uid_prop)
{
    std::vector<ScicosID> children;
    getObjectProperty(uid, k, uid_prop, children);

    for (ScicosID id : children)
    {
        deleteObject(id);
    }
}

ScicosID Controller::cloneObject(std::map<ScicosID, ScicosID>& mapped, ScicosID uid)
{
    auto initial = getObject(uid);
    const kind_t k = initial->kind();
    ScicosID o = createObject(k);
    mapped.insert(std::make_pair(uid, o));

    // Get then set all properties per type that do not manage ScicosID
    cloneProperties<double>(initial, o);
    cloneProperties<int>(initial, o);
    cloneProperties<bool>(initial, o);
    cloneProperties<std::string>(initial, o);
    cloneProperties<std::vector<double> >(initial, o);
    cloneProperties<std::vector<int> >(initial, o);
    cloneProperties<std::vector<std::string> >(initial, o);

    // deep copy children, manage ScicosID and std::vector<ScicosID>
    if (k == ANNOTATION)
    {
        deepClone(mapped, uid, o, k, PARENT_DIAGRAM, false);
        deepClone(mapped, uid, o, k, RELATED_TO, true);
    }
    else if (k == BLOCK)
    {
        deepClone(mapped, uid, o, k, PARENT_DIAGRAM, false);
        deepCloneVector(mapped, uid, o, k, INPUTS, true);
        deepCloneVector(mapped, uid, o, k, OUTPUTS, true);
        deepCloneVector(mapped, uid, o, k, EVENT_INPUTS, true);
        deepCloneVector(mapped, uid, o, k, EVENT_OUTPUTS, true);
        deepClone(mapped, uid, o, k, PARENT_BLOCK, false);
        deepCloneVector(mapped, uid, o, k, CHILDREN, true);
        // FIXME what about REFERENCED_PORT ?
    }
    else if (k == DIAGRAM)
    {
        deepCloneVector(mapped, uid, o, k, CHILDREN, true);
    }
    else if (k == LINK)
    {
        deepClone(mapped, uid, o, k, PARENT_DIAGRAM, false);
        deepClone(mapped, uid, o, k, SOURCE_PORT, true);
        deepClone(mapped, uid, o, k, DESTINATION_PORT, true);
    }
    else if (k == PORT)
    {
        deepClone(mapped, uid, o, k, SOURCE_BLOCK, true);
        deepCloneVector(mapped, uid, o, k, CONNECTED_SIGNALS, true);
    }

    return o;
}

void Controller::deepClone(std::map<ScicosID, ScicosID>& mapped, ScicosID uid, ScicosID clone, kind_t k, object_properties_t p, bool cloneIfNotFound)
{
    ScicosID v;
    getObjectProperty(uid, k, p, v);

    ScicosID cloned = 0;

    std::map<ScicosID, ScicosID>::iterator it = mapped.find(v);
    if (it != mapped.end())
    {
        cloned = it->second;
    }
    else
    {
        if (cloneIfNotFound)
        {
            if (v != 0)
            {
                cloned = cloneObject(mapped, v);
            }
            else
            {
                cloned = 0;
            }
        }
        else
        {
            cloned = 0;
        }
    }

    setObjectProperty(clone, k, p, cloned);
}

void Controller::deepCloneVector(std::map<ScicosID, ScicosID>& mapped, ScicosID uid, ScicosID clone, kind_t k, object_properties_t p, bool cloneIfNotFound)
{
    std::vector<ScicosID> v;
    getObjectProperty(uid, k, p, v);

    std::vector<ScicosID> cloned;
    cloned.reserve(v.size());

    for (const ScicosID & id : v)
    {
        if (id == 0)
        {
            // Deleted Block, the cloning is done at Adapter level
            cloned.push_back(id);
            continue;
        }

        std::map<ScicosID, ScicosID>::iterator it = mapped.find(id);
        if (it != mapped.end())
        {
            cloned.push_back(it->second);
        }
        else
        {
            if (cloneIfNotFound)
            {
                if (id != 0)
                {
                    cloned.push_back(cloneObject(mapped, id));
                }
                else
                {
                    cloned.push_back(0);
                }
            }
            else
            {
                cloned.push_back(0);
            }
        }
    }

    setObjectProperty(clone, k, p, cloned);
}

ScicosID Controller::cloneObject(ScicosID uid)
{
    std::map<ScicosID, ScicosID> mapped;
    return cloneObject(mapped, uid);
}

std::shared_ptr<model::BaseObject> Controller::getObject(ScicosID uid) const
{
    return m_instance.model.getObject(uid);
}

} /* namespace org_scilab_modules_scicos */