/*
 *  Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 *  Copyright (C) 2014-2014 - Scilab Enterprises - Bruno JOFRET
 *
 *  This file must be used under the terms of the CeCILL.
 *  This source file is licensed as described in the file COPYING, which
 *  you should have received as part of this distribution.  The terms
 *  are also available at
 *  http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
 *
 */

#ifndef __ADDCOLOR_H__
#define __ADDCOLOR_H__

#define COLOR_COMPONENT 3

/*
** Add color into figure colormap
** _iFig : the figure UID
** _pdblColor[3] : [R,G,B] color
*/
int addColor(int _iFig, double* _pdblColor);

#endif /* !__ADDCOLOR_H__ */