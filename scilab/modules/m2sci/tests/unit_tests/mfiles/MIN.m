% Test file for function min()
% Matlab version: 7.9.0.529 (R2009b)

% TEST 1
res1 = min([]);
% TEST 2
res2 = min(m2sciUnknownType([]));
% TEST 3
res3 = min(m2sciUnknownDims([]));
% TEST 4
res4 = min([1]);
% TEST 5
res5 = min([1,2,3]);
% TEST 6
res6 = min([1;2;3]);
% TEST 7
res7 = min([1,2,3;4,5,6]);
% TEST 8
res8 = min(m2sciUnknownType([1]));
% TEST 9
res9 = min(m2sciUnknownType([1,2,3]));
% TEST 10
res10 = min(m2sciUnknownType([1;2;3]));
% TEST 11
res11 = min(m2sciUnknownType([1,2,3;4,5,6]));
% TEST 12
res12 = min(m2sciUnknownDims([1]));
% TEST 13
res13 = min(m2sciUnknownDims([1,2,3]));
% TEST 14
res14 = min(m2sciUnknownDims([1;2;3]));
% TEST 15
res15 = min(m2sciUnknownDims([1,2,3;4,5,6]));
% TEST 16
res16 = min([i]);
% TEST 17
res17 = min([i,2i,3i]);
% TEST 18
res18 = min([i;2i;3i]);
% TEST 19
res19 = min([i,2i,3i;4i,5i,6i]);
% TEST 20
res20 = min(m2sciUnknownType([i]));
% TEST 21
res21 = min(m2sciUnknownType([i,2i,3i]));
% TEST 22
res22 = min(m2sciUnknownType([i;2i;3i]));
% TEST 23
res23 = min(m2sciUnknownType([i,2i,3i;4i,5i,6i]));
% TEST 24
res24 = min(m2sciUnknownDims([i]));
% TEST 25
res25 = min(m2sciUnknownDims([i,2i,3i]));
% TEST 26
res26 = min(m2sciUnknownDims([i;2i;3i]));
% TEST 27
res27 = min(m2sciUnknownDims([i,2i,3i;4i,5i,6i]));
% TEST 28
res28 = min(['s']);
% TEST 29
res29 = min(['str1']);
% TEST 30
res30 = min(['str1','str2','str3']);
% TEST 31
res31 = min(['str1';'str2';'str3']);
% TEST 32
res32 = min(['str1','str2','str3';'str4','str5','str6']);
% TEST 33
res33 = min(m2sciUnknownType(['s']));
% TEST 34
res34 = min(m2sciUnknownType(['str1']));
% TEST 35
res35 = min(m2sciUnknownType(['str1','str2','str3']));
% TEST 36
res36 = min(m2sciUnknownType(['str1';'str2';'str3']));
% TEST 37
res37 = min(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']));
% TEST 38
res38 = min(m2sciUnknownDims(['s']));
% TEST 39
res39 = min(m2sciUnknownDims(['str1']));
% TEST 40
res40 = min(m2sciUnknownDims(['str1','str2','str3']));
% TEST 41
res41 = min(m2sciUnknownDims(['str1';'str2';'str3']));
% TEST 42
res42 = min(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']));
% TEST 43
res43 = min([[1]==[1]]);
% TEST 44
res44 = min([[1,2,3]==[1,0,3]]);
% TEST 45
res45 = min([[1;2;3]==[1;0;3]]);
% TEST 46
res46 = min([[1,2,3;4,5,6]==[1,0,3;4,5,0]]);
% TEST 47
res47 = min(m2sciUnknownType([[1]==[1]]));
% TEST 48
res48 = min(m2sciUnknownType([[1,2,3]==[1,0,3]]));
% TEST 49
res49 = min(m2sciUnknownType([[1;2;3]==[1;0;3]]));
% TEST 50
res50 = min(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]));
% TEST 51
res51 = min(m2sciUnknownDims([[1]==[1]]));
% TEST 52
res52 = min(m2sciUnknownDims([[1,2,3]==[1,0,3]]));
% TEST 53
res53 = min(m2sciUnknownDims([[1;2;3]==[1;0;3]]));
% TEST 54
res54 = min(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]));
% TEST 55
[res55,res56] = min([]);
% TEST 56
[res57,res58] = min(m2sciUnknownType([]));
% TEST 57
[res59,res60] = min(m2sciUnknownDims([]));
% TEST 58
[res61,res62] = min([1]);
% TEST 59
[res63,res64] = min([1,2,3]);
% TEST 60
[res65,res66] = min([1;2;3]);
% TEST 61
[res67,res68] = min([1,2,3;4,5,6]);
% TEST 62
[res69,res70] = min(m2sciUnknownType([1]));
% TEST 63
[res71,res72] = min(m2sciUnknownType([1,2,3]));
% TEST 64
[res73,res74] = min(m2sciUnknownType([1;2;3]));
% TEST 65
[res75,res76] = min(m2sciUnknownType([1,2,3;4,5,6]));
% TEST 66
[res77,res78] = min(m2sciUnknownDims([1]));
% TEST 67
[res79,res80] = min(m2sciUnknownDims([1,2,3]));
% TEST 68
[res81,res82] = min(m2sciUnknownDims([1;2;3]));
% TEST 69
[res83,res84] = min(m2sciUnknownDims([1,2,3;4,5,6]));
% TEST 70
[res85,res86] = min([i]);
% TEST 71
[res87,res88] = min([i,2i,3i]);
% TEST 72
[res89,res90] = min([i;2i;3i]);
% TEST 73
[res91,res92] = min([i,2i,3i;4i,5i,6i]);
% TEST 74
[res93,res94] = min(m2sciUnknownType([i]));
% TEST 75
[res95,res96] = min(m2sciUnknownType([i,2i,3i]));
% TEST 76
[res97,res98] = min(m2sciUnknownType([i;2i;3i]));
% TEST 77
[res99,res100] = min(m2sciUnknownType([i,2i,3i;4i,5i,6i]));
% TEST 78
[res101,res102] = min(m2sciUnknownDims([i]));
% TEST 79
[res103,res104] = min(m2sciUnknownDims([i,2i,3i]));
% TEST 80
[res105,res106] = min(m2sciUnknownDims([i;2i;3i]));
% TEST 81
[res107,res108] = min(m2sciUnknownDims([i,2i,3i;4i,5i,6i]));
% TEST 82
[res109,res110] = min(['s']);
% TEST 83
[res111,res112] = min(['str1']);
% TEST 84
[res113,res114] = min(['str1','str2','str3']);
% TEST 85
[res115,res116] = min(['str1';'str2';'str3']);
% TEST 86
[res117,res118] = min(['str1','str2','str3';'str4','str5','str6']);
% TEST 87
[res119,res120] = min(m2sciUnknownType(['s']));
% TEST 88
[res121,res122] = min(m2sciUnknownType(['str1']));
% TEST 89
[res123,res124] = min(m2sciUnknownType(['str1','str2','str3']));
% TEST 90
[res125,res126] = min(m2sciUnknownType(['str1';'str2';'str3']));
% TEST 91
[res127,res128] = min(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']));
% TEST 92
[res129,res130] = min(m2sciUnknownDims(['s']));
% TEST 93
[res131,res132] = min(m2sciUnknownDims(['str1']));
% TEST 94
[res133,res134] = min(m2sciUnknownDims(['str1','str2','str3']));
% TEST 95
[res135,res136] = min(m2sciUnknownDims(['str1';'str2';'str3']));
% TEST 96
[res137,res138] = min(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']));
% TEST 97
[res139,res140] = min([[1]==[1]]);
% TEST 98
[res141,res142] = min([[1,2,3]==[1,0,3]]);
% TEST 99
[res143,res144] = min([[1;2;3]==[1;0;3]]);
% TEST 100
[res145,res146] = min([[1,2,3;4,5,6]==[1,0,3;4,5,0]]);
% TEST 101
[res147,res148] = min(m2sciUnknownType([[1]==[1]]));
% TEST 102
[res149,res150] = min(m2sciUnknownType([[1,2,3]==[1,0,3]]));
% TEST 103
[res151,res152] = min(m2sciUnknownType([[1;2;3]==[1;0;3]]));
% TEST 104
[res153,res154] = min(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]));
% TEST 105
[res155,res156] = min(m2sciUnknownDims([[1]==[1]]));
% TEST 106
[res157,res158] = min(m2sciUnknownDims([[1,2,3]==[1,0,3]]));
% TEST 107
[res159,res160] = min(m2sciUnknownDims([[1;2;3]==[1;0;3]]));
% TEST 108
[res161,res162] = min(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]));
% TEST 109
res163 = min([],[]);
% TEST 110
res164 = min(m2sciUnknownType([]),m2sciUnknownType([]));
% TEST 111
res165 = min(m2sciUnknownDims([]),m2sciUnknownDims([]));
% TEST 112
res166 = min([1],[1]);
% TEST 113
res167 = min([1,2,3],[3,2,1]);
% TEST 114
res168 = min([1;2;3],[3;2;1]);
% TEST 115
res169 = min([1,2,3;4,5,6],[6,5,4;3,2,1]);
% TEST 116
res170 = min(m2sciUnknownType([1]),m2sciUnknownType([1]));
% TEST 117
res171 = min(m2sciUnknownType([1,2,3]),m2sciUnknownType([3,2,1]));
% TEST 118
res172 = min(m2sciUnknownType([1;2;3]),m2sciUnknownType([3;2;1]));
% TEST 119
res173 = min(m2sciUnknownType([1,2,3;4,5,6]),m2sciUnknownType([6,5,4;3,2,1]));
% TEST 120
res174 = min(m2sciUnknownDims([1]),m2sciUnknownDims([1]));
% TEST 121
res175 = min(m2sciUnknownDims([1,2,3]),m2sciUnknownDims([3,2,1]));
% TEST 122
res176 = min(m2sciUnknownDims([1;2;3]),m2sciUnknownDims([3;2;1]));
% TEST 123
res177 = min(m2sciUnknownDims([1,2,3;4,5,6]),m2sciUnknownDims([6,5,4;3,2,1]));
% TEST 124
res178 = min([i],[i]);
% TEST 125
res179 = min([i,2i,3i],[3i,2i,i]);
% TEST 126
res180 = min([i;2i;3i],[3i;2i;i]);
% TEST 127
res181 = min([i,2i,3i;4i,5i,6i],[6i,5i,4i;3i,2i,i]);
% TEST 128
res182 = min(m2sciUnknownType([i]),m2sciUnknownType([i]));
% TEST 129
res183 = min(m2sciUnknownType([i,2i,3i]),m2sciUnknownType([3i,2i,i]));
% TEST 130
res184 = min(m2sciUnknownType([i;2i;3i]),m2sciUnknownType([3i;2i;i]));
% TEST 131
res185 = min(m2sciUnknownType([i,2i,3i;4i,5i,6i]),m2sciUnknownType([6i,5i,4i;3i,2i,i]));
% TEST 132
res186 = min(m2sciUnknownDims([i]),m2sciUnknownDims([i]));
% TEST 133
res187 = min(m2sciUnknownDims([i,2i,3i]),m2sciUnknownDims([3i,2i,i]));
% TEST 134
res188 = min(m2sciUnknownDims([i;2i;3i]),m2sciUnknownDims([3i;2i;i]));
% TEST 135
res189 = min(m2sciUnknownDims([i,2i,3i;4i,5i,6i]),m2sciUnknownDims([6i,5i,4i;3i,2i,i]));
% TEST 136
res190 = min(['s'],['s']);
% TEST 137
res191 = min(['str1'],['str1']);
% TEST 138
res192 = min(['str1','str2','str3'],['str3','str2','str1']);
% TEST 139
res193 = min(['str1';'str2';'str3'],['str3';'str2';'str1']);
% TEST 140
res194 = min(['str1','str2','str3';'str4','str5','str6'],['str6','str5','str4';'str3','str2','str1']);
% TEST 141
res195 = min(m2sciUnknownType(['s']),m2sciUnknownType(['s']));
% TEST 142
res196 = min(m2sciUnknownType(['str1']),m2sciUnknownType(['str1']));
% TEST 143
res197 = min(m2sciUnknownType(['str1','str2','str3']),m2sciUnknownType(['str3','str2','str1']));
% TEST 144
res198 = min(m2sciUnknownType(['str1';'str2';'str3']),m2sciUnknownType(['str3';'str2';'str1']));
% TEST 145
res199 = min(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']),m2sciUnknownType(['str6','str5','str4';'str3','str2','str1']));
% TEST 146
res200 = min(m2sciUnknownDims(['s']),m2sciUnknownDims(['s']));
% TEST 147
res201 = min(m2sciUnknownDims(['str1']),m2sciUnknownDims(['str1']));
% TEST 148
res202 = min(m2sciUnknownDims(['str1','str2','str3']),m2sciUnknownDims(['str3','str2','str1']));
% TEST 149
res203 = min(m2sciUnknownDims(['str1';'str2';'str3']),m2sciUnknownDims(['str3';'str2';'str1']));
% TEST 150
res204 = min(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']),m2sciUnknownDims(['str6','str5','str4';'str3','str2','str1']));
% TEST 151
res205 = min([[1]==[1]],[[1]==[1]]);
% TEST 152
res206 = min([[1,2,3]==[1,0,3]],[[1,2,3]==[1,2,0]]);
% TEST 153
res207 = min([[1;2;3]==[1;0;3]],[[1;2;3]==[1;2;0]]);
% TEST 154
res208 = min([[1,2,3;4,5,6]==[1,0,3;4,5,0]],[[1,2,3;4,5,6]==[1,2,0;4,0,6]]);
% TEST 155
res209 = min(m2sciUnknownType([[1]==[1]]),m2sciUnknownType([[1]==[1]]));
% TEST 156
res210 = min(m2sciUnknownType([[1,2,3]==[1,0,3]]),m2sciUnknownType([[1,2,3]==[1,2,0]]));
% TEST 157
res211 = min(m2sciUnknownType([[1;2;3]==[1;0;3]]),m2sciUnknownType([[1;2;3]==[1;2;0]]));
% TEST 158
res212 = min(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),m2sciUnknownType([[1,2,3;4,5,6]==[1,2,0;4,0,6]]));
% TEST 159
res213 = min(m2sciUnknownDims([[1]==[1]]),m2sciUnknownDims([[1]==[1]]));
% TEST 160
res214 = min(m2sciUnknownDims([[1,2,3]==[1,0,3]]),m2sciUnknownDims([[1,2,3]==[1,2,0]]));
% TEST 161
res215 = min(m2sciUnknownDims([[1;2;3]==[1;0;3]]),m2sciUnknownDims([[1;2;3]==[1;2;0]]));
% TEST 162
res216 = min(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),m2sciUnknownDims([[1,2,3;4,5,6]==[1,2,0;4,0,6]]));
% TEST 163
res217 = min([],[],1);
% TEST 164
res218 = min(m2sciUnknownType([]),[],1);
% TEST 165
res219 = min(m2sciUnknownDims([]),[],1);
% TEST 166
res220 = min([1],[],1);
% TEST 167
res221 = min([1,2,3],[],1);
% TEST 168
res222 = min([1;2;3],[],1);
% TEST 169
res223 = min([1,2,3;4,5,6],[],1);
% TEST 170
res224 = min(m2sciUnknownType([1]),[],1);
% TEST 171
res225 = min(m2sciUnknownType([1,2,3]),[],1);
% TEST 172
res226 = min(m2sciUnknownType([1;2;3]),[],1);
% TEST 173
res227 = min(m2sciUnknownType([1,2,3;4,5,6]),[],1);
% TEST 174
res228 = min(m2sciUnknownDims([1]),[],1);
% TEST 175
res229 = min(m2sciUnknownDims([1,2,3]),[],1);
% TEST 176
res230 = min(m2sciUnknownDims([1;2;3]),[],1);
% TEST 177
res231 = min(m2sciUnknownDims([1,2,3;4,5,6]),[],1);
% TEST 178
res232 = min([i],[],1);
% TEST 179
res233 = min([i,2i,3i],[],1);
% TEST 180
res234 = min([i;2i;3i],[],1);
% TEST 181
res235 = min([i,2i,3i;4i,5i,6i],[],1);
% TEST 182
res236 = min(m2sciUnknownType([i]),[],1);
% TEST 183
res237 = min(m2sciUnknownType([i,2i,3i]),[],1);
% TEST 184
res238 = min(m2sciUnknownType([i;2i;3i]),[],1);
% TEST 185
res239 = min(m2sciUnknownType([i,2i,3i;4i,5i,6i]),[],1);
% TEST 186
res240 = min(m2sciUnknownDims([i]),[],1);
% TEST 187
res241 = min(m2sciUnknownDims([i,2i,3i]),[],1);
% TEST 188
res242 = min(m2sciUnknownDims([i;2i;3i]),[],1);
% TEST 189
res243 = min(m2sciUnknownDims([i,2i,3i;4i,5i,6i]),[],1);
% TEST 190
res244 = min(['s'],[],1);
% TEST 191
res245 = min(['str1'],[],1);
% TEST 192
res246 = min(['str1','str2','str3'],[],1);
% TEST 193
res247 = min(['str1';'str2';'str3'],[],1);
% TEST 194
res248 = min(['str1','str2','str3';'str4','str5','str6'],[],1);
% TEST 195
res249 = min(m2sciUnknownType(['s']),[],1);
% TEST 196
res250 = min(m2sciUnknownType(['str1']),[],1);
% TEST 197
res251 = min(m2sciUnknownType(['str1','str2','str3']),[],1);
% TEST 198
res252 = min(m2sciUnknownType(['str1';'str2';'str3']),[],1);
% TEST 199
res253 = min(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']),[],1);
% TEST 200
res254 = min(m2sciUnknownDims(['s']),[],1);
% TEST 201
res255 = min(m2sciUnknownDims(['str1']),[],1);
% TEST 202
res256 = min(m2sciUnknownDims(['str1','str2','str3']),[],1);
% TEST 203
res257 = min(m2sciUnknownDims(['str1';'str2';'str3']),[],1);
% TEST 204
res258 = min(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']),[],1);
% TEST 205
res259 = min([[1]==[1]],[],1);
% TEST 206
res260 = min([[1,2,3]==[1,0,3]],[],1);
% TEST 207
res261 = min([[1;2;3]==[1;0;3]],[],1);
% TEST 208
res262 = min([[1,2,3;4,5,6]==[1,0,3;4,5,0]],[],1);
% TEST 209
res263 = min(m2sciUnknownType([[1]==[1]]),[],1);
% TEST 210
res264 = min(m2sciUnknownType([[1,2,3]==[1,0,3]]),[],1);
% TEST 211
res265 = min(m2sciUnknownType([[1;2;3]==[1;0;3]]),[],1);
% TEST 212
res266 = min(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),[],1);
% TEST 213
res267 = min(m2sciUnknownDims([[1]==[1]]),[],1);
% TEST 214
res268 = min(m2sciUnknownDims([[1,2,3]==[1,0,3]]),[],1);
% TEST 215
res269 = min(m2sciUnknownDims([[1;2;3]==[1;0;3]]),[],1);
% TEST 216
res270 = min(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),[],1);
% TEST 217
res271 = min([],[],2);
% TEST 218
res272 = min(m2sciUnknownType([]),[],2);
% TEST 219
res273 = min(m2sciUnknownDims([]),[],2);
% TEST 220
res274 = min([1],[],2);
% TEST 221
res275 = min([1,2,3],[],2);
% TEST 222
res276 = min([1;2;3],[],2);
% TEST 223
res277 = min([1,2,3;4,5,6],[],2);
% TEST 224
res278 = min(m2sciUnknownType([1]),[],2);
% TEST 225
res279 = min(m2sciUnknownType([1,2,3]),[],2);
% TEST 226
res280 = min(m2sciUnknownType([1;2;3]),[],2);
% TEST 227
res281 = min(m2sciUnknownType([1,2,3;4,5,6]),[],2);
% TEST 228
res282 = min(m2sciUnknownDims([1]),[],2);
% TEST 229
res283 = min(m2sciUnknownDims([1,2,3]),[],2);
% TEST 230
res284 = min(m2sciUnknownDims([1;2;3]),[],2);
% TEST 231
res285 = min(m2sciUnknownDims([1,2,3;4,5,6]),[],2);
% TEST 232
res286 = min([i],[],2);
% TEST 233
res287 = min([i,2i,3i],[],2);
% TEST 234
res288 = min([i;2i;3i],[],2);
% TEST 235
res289 = min([i,2i,3i;4i,5i,6i],[],2);
% TEST 236
res290 = min(m2sciUnknownType([i]),[],2);
% TEST 237
res291 = min(m2sciUnknownType([i,2i,3i]),[],2);
% TEST 238
res292 = min(m2sciUnknownType([i;2i;3i]),[],2);
% TEST 239
res293 = min(m2sciUnknownType([i,2i,3i;4i,5i,6i]),[],2);
% TEST 240
res294 = min(m2sciUnknownDims([i]),[],2);
% TEST 241
res295 = min(m2sciUnknownDims([i,2i,3i]),[],2);
% TEST 242
res296 = min(m2sciUnknownDims([i;2i;3i]),[],2);
% TEST 243
res297 = min(m2sciUnknownDims([i,2i,3i;4i,5i,6i]),[],2);
% TEST 244
res298 = min(['s'],[],2);
% TEST 245
res299 = min(['str1'],[],2);
% TEST 246
res300 = min(['str1','str2','str3'],[],2);
% TEST 247
res301 = min(['str1';'str2';'str3'],[],2);
% TEST 248
res302 = min(['str1','str2','str3';'str4','str5','str6'],[],2);
% TEST 249
res303 = min(m2sciUnknownType(['s']),[],2);
% TEST 250
res304 = min(m2sciUnknownType(['str1']),[],2);
% TEST 251
res305 = min(m2sciUnknownType(['str1','str2','str3']),[],2);
% TEST 252
res306 = min(m2sciUnknownType(['str1';'str2';'str3']),[],2);
% TEST 253
res307 = min(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']),[],2);
% TEST 254
res308 = min(m2sciUnknownDims(['s']),[],2);
% TEST 255
res309 = min(m2sciUnknownDims(['str1']),[],2);
% TEST 256
res310 = min(m2sciUnknownDims(['str1','str2','str3']),[],2);
% TEST 257
res311 = min(m2sciUnknownDims(['str1';'str2';'str3']),[],2);
% TEST 258
res312 = min(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']),[],2);
% TEST 259
res313 = min([[1]==[1]],[],2);
% TEST 260
res314 = min([[1,2,3]==[1,0,3]],[],2);
% TEST 261
res315 = min([[1;2;3]==[1;0;3]],[],2);
% TEST 262
res316 = min([[1,2,3;4,5,6]==[1,0,3;4,5,0]],[],2);
% TEST 263
res317 = min(m2sciUnknownType([[1]==[1]]),[],2);
% TEST 264
res318 = min(m2sciUnknownType([[1,2,3]==[1,0,3]]),[],2);
% TEST 265
res319 = min(m2sciUnknownType([[1;2;3]==[1;0;3]]),[],2);
% TEST 266
res320 = min(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),[],2);
% TEST 267
res321 = min(m2sciUnknownDims([[1]==[1]]),[],2);
% TEST 268
res322 = min(m2sciUnknownDims([[1,2,3]==[1,0,3]]),[],2);
% TEST 269
res323 = min(m2sciUnknownDims([[1;2;3]==[1;0;3]]),[],2);
% TEST 270
res324 = min(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),[],2);
% TEST 271
res325 = min([],[],3);
% TEST 272
res326 = min(m2sciUnknownType([]),[],3);
% TEST 273
res327 = min(m2sciUnknownDims([]),[],3);
% TEST 274
res328 = min([1],[],3);
% TEST 275
res329 = min([1,2,3],[],3);
% TEST 276
res330 = min([1;2;3],[],3);
% TEST 277
res331 = min([1,2,3;4,5,6],[],3);
% TEST 278
res332 = min(m2sciUnknownType([1]),[],3);
% TEST 279
res333 = min(m2sciUnknownType([1,2,3]),[],3);
% TEST 280
res334 = min(m2sciUnknownType([1;2;3]),[],3);
% TEST 281
res335 = min(m2sciUnknownType([1,2,3;4,5,6]),[],3);
% TEST 282
res336 = min(m2sciUnknownDims([1]),[],3);
% TEST 283
res337 = min(m2sciUnknownDims([1,2,3]),[],3);
% TEST 284
res338 = min(m2sciUnknownDims([1;2;3]),[],3);
% TEST 285
res339 = min(m2sciUnknownDims([1,2,3;4,5,6]),[],3);
% TEST 286
res340 = min([i],[],3);
% TEST 287
res341 = min([i,2i,3i],[],3);
% TEST 288
res342 = min([i;2i;3i],[],3);
% TEST 289
res343 = min([i,2i,3i;4i,5i,6i],[],3);
% TEST 290
res344 = min(m2sciUnknownType([i]),[],3);
% TEST 291
res345 = min(m2sciUnknownType([i,2i,3i]),[],3);
% TEST 292
res346 = min(m2sciUnknownType([i;2i;3i]),[],3);
% TEST 293
res347 = min(m2sciUnknownType([i,2i,3i;4i,5i,6i]),[],3);
% TEST 294
res348 = min(m2sciUnknownDims([i]),[],3);
% TEST 295
res349 = min(m2sciUnknownDims([i,2i,3i]),[],3);
% TEST 296
res350 = min(m2sciUnknownDims([i;2i;3i]),[],3);
% TEST 297
res351 = min(m2sciUnknownDims([i,2i,3i;4i,5i,6i]),[],3);
% TEST 298
res352 = min(['s'],[],3);
% TEST 299
res353 = min(['str1'],[],3);
% TEST 300
res354 = min(['str1','str2','str3'],[],3);
% TEST 301
res355 = min(['str1';'str2';'str3'],[],3);
% TEST 302
res356 = min(['str1','str2','str3';'str4','str5','str6'],[],3);
% TEST 303
res357 = min(m2sciUnknownType(['s']),[],3);
% TEST 304
res358 = min(m2sciUnknownType(['str1']),[],3);
% TEST 305
res359 = min(m2sciUnknownType(['str1','str2','str3']),[],3);
% TEST 306
res360 = min(m2sciUnknownType(['str1';'str2';'str3']),[],3);
% TEST 307
res361 = min(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']),[],3);
% TEST 308
res362 = min(m2sciUnknownDims(['s']),[],3);
% TEST 309
res363 = min(m2sciUnknownDims(['str1']),[],3);
% TEST 310
res364 = min(m2sciUnknownDims(['str1','str2','str3']),[],3);
% TEST 311
res365 = min(m2sciUnknownDims(['str1';'str2';'str3']),[],3);
% TEST 312
res366 = min(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']),[],3);
% TEST 313
res367 = min([[1]==[1]],[],3);
% TEST 314
res368 = min([[1,2,3]==[1,0,3]],[],3);
% TEST 315
res369 = min([[1;2;3]==[1;0;3]],[],3);
% TEST 316
res370 = min([[1,2,3;4,5,6]==[1,0,3;4,5,0]],[],3);
% TEST 317
res371 = min(m2sciUnknownType([[1]==[1]]),[],3);
% TEST 318
res372 = min(m2sciUnknownType([[1,2,3]==[1,0,3]]),[],3);
% TEST 319
res373 = min(m2sciUnknownType([[1;2;3]==[1;0;3]]),[],3);
% TEST 320
res374 = min(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),[],3);
% TEST 321
res375 = min(m2sciUnknownDims([[1]==[1]]),[],3);
% TEST 322
res376 = min(m2sciUnknownDims([[1,2,3]==[1,0,3]]),[],3);
% TEST 323
res377 = min(m2sciUnknownDims([[1;2;3]==[1;0;3]]),[],3);
% TEST 324
res378 = min(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),[],3);
% TEST 325
[res379,res380] = min([],[],1);
% TEST 326
[res381,res382] = min(m2sciUnknownType([]),[],1);
% TEST 327
[res383,res384] = min(m2sciUnknownDims([]),[],1);
% TEST 328
[res385,res386] = min([1],[],1);
% TEST 329
[res387,res388] = min([1,2,3],[],1);
% TEST 330
[res389,res390] = min([1;2;3],[],1);
% TEST 331
[res391,res392] = min([1,2,3;4,5,6],[],1);
% TEST 332
[res393,res394] = min(m2sciUnknownType([1]),[],1);
% TEST 333
[res395,res396] = min(m2sciUnknownType([1,2,3]),[],1);
% TEST 334
[res397,res398] = min(m2sciUnknownType([1;2;3]),[],1);
% TEST 335
[res399,res400] = min(m2sciUnknownType([1,2,3;4,5,6]),[],1);
% TEST 336
[res401,res402] = min(m2sciUnknownDims([1]),[],1);
% TEST 337
[res403,res404] = min(m2sciUnknownDims([1,2,3]),[],1);
% TEST 338
[res405,res406] = min(m2sciUnknownDims([1;2;3]),[],1);
% TEST 339
[res407,res408] = min(m2sciUnknownDims([1,2,3;4,5,6]),[],1);
% TEST 340
[res409,res410] = min([i],[],1);
% TEST 341
[res411,res412] = min([i,2i,3i],[],1);
% TEST 342
[res413,res414] = min([i;2i;3i],[],1);
% TEST 343
[res415,res416] = min([i,2i,3i;4i,5i,6i],[],1);
% TEST 344
[res417,res418] = min(m2sciUnknownType([i]),[],1);
% TEST 345
[res419,res420] = min(m2sciUnknownType([i,2i,3i]),[],1);
% TEST 346
[res421,res422] = min(m2sciUnknownType([i;2i;3i]),[],1);
% TEST 347
[res423,res424] = min(m2sciUnknownType([i,2i,3i;4i,5i,6i]),[],1);
% TEST 348
[res425,res426] = min(m2sciUnknownDims([i]),[],1);
% TEST 349
[res427,res428] = min(m2sciUnknownDims([i,2i,3i]),[],1);
% TEST 350
[res429,res430] = min(m2sciUnknownDims([i;2i;3i]),[],1);
% TEST 351
[res431,res432] = min(m2sciUnknownDims([i,2i,3i;4i,5i,6i]),[],1);
% TEST 352
[res433,res434] = min(['s'],[],1);
% TEST 353
[res435,res436] = min(['str1'],[],1);
% TEST 354
[res437,res438] = min(['str1','str2','str3'],[],1);
% TEST 355
[res439,res440] = min(['str1';'str2';'str3'],[],1);
% TEST 356
[res441,res442] = min(['str1','str2','str3';'str4','str5','str6'],[],1);
% TEST 357
[res443,res444] = min(m2sciUnknownType(['s']),[],1);
% TEST 358
[res445,res446] = min(m2sciUnknownType(['str1']),[],1);
% TEST 359
[res447,res448] = min(m2sciUnknownType(['str1','str2','str3']),[],1);
% TEST 360
[res449,res450] = min(m2sciUnknownType(['str1';'str2';'str3']),[],1);
% TEST 361
[res451,res452] = min(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']),[],1);
% TEST 362
[res453,res454] = min(m2sciUnknownDims(['s']),[],1);
% TEST 363
[res455,res456] = min(m2sciUnknownDims(['str1']),[],1);
% TEST 364
[res457,res458] = min(m2sciUnknownDims(['str1','str2','str3']),[],1);
% TEST 365
[res459,res460] = min(m2sciUnknownDims(['str1';'str2';'str3']),[],1);
% TEST 366
[res461,res462] = min(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']),[],1);
% TEST 367
[res463,res464] = min([[1]==[1]],[],1);
% TEST 368
[res465,res466] = min([[1,2,3]==[1,0,3]],[],1);
% TEST 369
[res467,res468] = min([[1;2;3]==[1;0;3]],[],1);
% TEST 370
[res469,res470] = min([[1,2,3;4,5,6]==[1,0,3;4,5,0]],[],1);
% TEST 371
[res471,res472] = min(m2sciUnknownType([[1]==[1]]),[],1);
% TEST 372
[res473,res474] = min(m2sciUnknownType([[1,2,3]==[1,0,3]]),[],1);
% TEST 373
[res475,res476] = min(m2sciUnknownType([[1;2;3]==[1;0;3]]),[],1);
% TEST 374
[res477,res478] = min(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),[],1);
% TEST 375
[res479,res480] = min(m2sciUnknownDims([[1]==[1]]),[],1);
% TEST 376
[res481,res482] = min(m2sciUnknownDims([[1,2,3]==[1,0,3]]),[],1);
% TEST 377
[res483,res484] = min(m2sciUnknownDims([[1;2;3]==[1;0;3]]),[],1);
% TEST 378
[res485,res486] = min(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),[],1);
% TEST 379
[res487,res488] = min([],[],2);
% TEST 380
[res489,res490] = min(m2sciUnknownType([]),[],2);
% TEST 381
[res491,res492] = min(m2sciUnknownDims([]),[],2);
% TEST 382
[res493,res494] = min([1],[],2);
% TEST 383
[res495,res496] = min([1,2,3],[],2);
% TEST 384
[res497,res498] = min([1;2;3],[],2);
% TEST 385
[res499,res500] = min([1,2,3;4,5,6],[],2);
% TEST 386
[res501,res502] = min(m2sciUnknownType([1]),[],2);
% TEST 387
[res503,res504] = min(m2sciUnknownType([1,2,3]),[],2);
% TEST 388
[res505,res506] = min(m2sciUnknownType([1;2;3]),[],2);
% TEST 389
[res507,res508] = min(m2sciUnknownType([1,2,3;4,5,6]),[],2);
% TEST 390
[res509,res510] = min(m2sciUnknownDims([1]),[],2);
% TEST 391
[res511,res512] = min(m2sciUnknownDims([1,2,3]),[],2);
% TEST 392
[res513,res514] = min(m2sciUnknownDims([1;2;3]),[],2);
% TEST 393
[res515,res516] = min(m2sciUnknownDims([1,2,3;4,5,6]),[],2);
% TEST 394
[res517,res518] = min([i],[],2);
% TEST 395
[res519,res520] = min([i,2i,3i],[],2);
% TEST 396
[res521,res522] = min([i;2i;3i],[],2);
% TEST 397
[res523,res524] = min([i,2i,3i;4i,5i,6i],[],2);
% TEST 398
[res525,res526] = min(m2sciUnknownType([i]),[],2);
% TEST 399
[res527,res528] = min(m2sciUnknownType([i,2i,3i]),[],2);
% TEST 400
[res529,res530] = min(m2sciUnknownType([i;2i;3i]),[],2);
% TEST 401
[res531,res532] = min(m2sciUnknownType([i,2i,3i;4i,5i,6i]),[],2);
% TEST 402
[res533,res534] = min(m2sciUnknownDims([i]),[],2);
% TEST 403
[res535,res536] = min(m2sciUnknownDims([i,2i,3i]),[],2);
% TEST 404
[res537,res538] = min(m2sciUnknownDims([i;2i;3i]),[],2);
% TEST 405
[res539,res540] = min(m2sciUnknownDims([i,2i,3i;4i,5i,6i]),[],2);
% TEST 406
[res541,res542] = min(['s'],[],2);
% TEST 407
[res543,res544] = min(['str1'],[],2);
% TEST 408
[res545,res546] = min(['str1','str2','str3'],[],2);
% TEST 409
[res547,res548] = min(['str1';'str2';'str3'],[],2);
% TEST 410
[res549,res550] = min(['str1','str2','str3';'str4','str5','str6'],[],2);
% TEST 411
[res551,res552] = min(m2sciUnknownType(['s']),[],2);
% TEST 412
[res553,res554] = min(m2sciUnknownType(['str1']),[],2);
% TEST 413
[res555,res556] = min(m2sciUnknownType(['str1','str2','str3']),[],2);
% TEST 414
[res557,res558] = min(m2sciUnknownType(['str1';'str2';'str3']),[],2);
% TEST 415
[res559,res560] = min(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']),[],2);
% TEST 416
[res561,res562] = min(m2sciUnknownDims(['s']),[],2);
% TEST 417
[res563,res564] = min(m2sciUnknownDims(['str1']),[],2);
% TEST 418
[res565,res566] = min(m2sciUnknownDims(['str1','str2','str3']),[],2);
% TEST 419
[res567,res568] = min(m2sciUnknownDims(['str1';'str2';'str3']),[],2);
% TEST 420
[res569,res570] = min(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']),[],2);
% TEST 421
[res571,res572] = min([[1]==[1]],[],2);
% TEST 422
[res573,res574] = min([[1,2,3]==[1,0,3]],[],2);
% TEST 423
[res575,res576] = min([[1;2;3]==[1;0;3]],[],2);
% TEST 424
[res577,res578] = min([[1,2,3;4,5,6]==[1,0,3;4,5,0]],[],2);
% TEST 425
[res579,res580] = min(m2sciUnknownType([[1]==[1]]),[],2);
% TEST 426
[res581,res582] = min(m2sciUnknownType([[1,2,3]==[1,0,3]]),[],2);
% TEST 427
[res583,res584] = min(m2sciUnknownType([[1;2;3]==[1;0;3]]),[],2);
% TEST 428
[res585,res586] = min(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),[],2);
% TEST 429
[res587,res588] = min(m2sciUnknownDims([[1]==[1]]),[],2);
% TEST 430
[res589,res590] = min(m2sciUnknownDims([[1,2,3]==[1,0,3]]),[],2);
% TEST 431
[res591,res592] = min(m2sciUnknownDims([[1;2;3]==[1;0;3]]),[],2);
% TEST 432
[res593,res594] = min(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),[],2);
% TEST 433
[res595,res596] = min([],[],3);
% TEST 434
[res597,res598] = min(m2sciUnknownType([]),[],3);
% TEST 435
[res599,res600] = min(m2sciUnknownDims([]),[],3);
% TEST 436
[res601,res602] = min([1],[],3);
% TEST 437
[res603,res604] = min([1,2,3],[],3);
% TEST 438
[res605,res606] = min([1;2;3],[],3);
% TEST 439
[res607,res608] = min([1,2,3;4,5,6],[],3);
% TEST 440
[res609,res610] = min(m2sciUnknownType([1]),[],3);
% TEST 441
[res611,res612] = min(m2sciUnknownType([1,2,3]),[],3);
% TEST 442
[res613,res614] = min(m2sciUnknownType([1;2;3]),[],3);
% TEST 443
[res615,res616] = min(m2sciUnknownType([1,2,3;4,5,6]),[],3);
% TEST 444
[res617,res618] = min(m2sciUnknownDims([1]),[],3);
% TEST 445
[res619,res620] = min(m2sciUnknownDims([1,2,3]),[],3);
% TEST 446
[res621,res622] = min(m2sciUnknownDims([1;2;3]),[],3);
% TEST 447
[res623,res624] = min(m2sciUnknownDims([1,2,3;4,5,6]),[],3);
% TEST 448
[res625,res626] = min([i],[],3);
% TEST 449
[res627,res628] = min([i,2i,3i],[],3);
% TEST 450
[res629,res630] = min([i;2i;3i],[],3);
% TEST 451
[res631,res632] = min([i,2i,3i;4i,5i,6i],[],3);
% TEST 452
[res633,res634] = min(m2sciUnknownType([i]),[],3);
% TEST 453
[res635,res636] = min(m2sciUnknownType([i,2i,3i]),[],3);
% TEST 454
[res637,res638] = min(m2sciUnknownType([i;2i;3i]),[],3);
% TEST 455
[res639,res640] = min(m2sciUnknownType([i,2i,3i;4i,5i,6i]),[],3);
% TEST 456
[res641,res642] = min(m2sciUnknownDims([i]),[],3);
% TEST 457
[res643,res644] = min(m2sciUnknownDims([i,2i,3i]),[],3);
% TEST 458
[res645,res646] = min(m2sciUnknownDims([i;2i;3i]),[],3);
% TEST 459
[res647,res648] = min(m2sciUnknownDims([i,2i,3i;4i,5i,6i]),[],3);
% TEST 460
[res649,res650] = min(['s'],[],3);
% TEST 461
[res651,res652] = min(['str1'],[],3);
% TEST 462
[res653,res654] = min(['str1','str2','str3'],[],3);
% TEST 463
[res655,res656] = min(['str1';'str2';'str3'],[],3);
% TEST 464
[res657,res658] = min(['str1','str2','str3';'str4','str5','str6'],[],3);
% TEST 465
[res659,res660] = min(m2sciUnknownType(['s']),[],3);
% TEST 466
[res661,res662] = min(m2sciUnknownType(['str1']),[],3);
% TEST 467
[res663,res664] = min(m2sciUnknownType(['str1','str2','str3']),[],3);
% TEST 468
[res665,res666] = min(m2sciUnknownType(['str1';'str2';'str3']),[],3);
% TEST 469
[res667,res668] = min(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']),[],3);
% TEST 470
[res669,res670] = min(m2sciUnknownDims(['s']),[],3);
% TEST 471
[res671,res672] = min(m2sciUnknownDims(['str1']),[],3);
% TEST 472
[res673,res674] = min(m2sciUnknownDims(['str1','str2','str3']),[],3);
% TEST 473
[res675,res676] = min(m2sciUnknownDims(['str1';'str2';'str3']),[],3);
% TEST 474
[res677,res678] = min(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']),[],3);
% TEST 475
[res679,res680] = min([[1]==[1]],[],3);
% TEST 476
[res681,res682] = min([[1,2,3]==[1,0,3]],[],3);
% TEST 477
[res683,res684] = min([[1;2;3]==[1;0;3]],[],3);
% TEST 478
[res685,res686] = min([[1,2,3;4,5,6]==[1,0,3;4,5,0]],[],3);
% TEST 479
[res687,res688] = min(m2sciUnknownType([[1]==[1]]),[],3);
% TEST 480
[res689,res690] = min(m2sciUnknownType([[1,2,3]==[1,0,3]]),[],3);
% TEST 481
[res691,res692] = min(m2sciUnknownType([[1;2;3]==[1;0;3]]),[],3);
% TEST 482
[res693,res694] = min(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),[],3);
% TEST 483
[res695,res696] = min(m2sciUnknownDims([[1]==[1]]),[],3);
% TEST 484
[res697,res698] = min(m2sciUnknownDims([[1,2,3]==[1,0,3]]),[],3);
% TEST 485
[res699,res700] = min(m2sciUnknownDims([[1;2;3]==[1;0;3]]),[],3);
% TEST 486
[res701,res702] = min(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),[],3);
