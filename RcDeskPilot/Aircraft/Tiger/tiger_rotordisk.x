xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 163;
 0.00000;0.01322;-3.53194;,
 0.68905;0.01322;-3.46408;,
 0.65552;-0.02459;-3.29554;,
 0.00000;-0.02459;-3.36011;,
 1.35162;0.01322;-3.26309;,
 1.28586;-0.02459;-3.10433;,
 1.96224;0.01322;-2.93670;,
 1.86678;-0.02459;-2.79383;,
 2.49746;0.01322;-2.49746;,
 2.37595;-0.02459;-2.37595;,
 2.93670;0.01322;-1.96224;,
 2.79383;-0.02459;-1.86678;,
 3.26309;0.01322;-1.35162;,
 3.10433;-0.02459;-1.28586;,
 3.46408;0.01322;-0.68905;,
 3.29554;-0.02459;-0.65552;,
 3.53194;0.01322;0.00000;,
 3.36011;-0.02459;-0.00000;,
 3.46408;0.01322;0.68905;,
 3.29554;-0.02459;0.65552;,
 3.26309;0.01322;1.35162;,
 3.10433;-0.02459;1.28586;,
 2.93670;0.01322;1.96224;,
 2.79383;-0.02459;1.86678;,
 2.49746;0.01322;2.49746;,
 2.37595;-0.02459;2.37595;,
 1.96224;0.01322;2.93670;,
 1.86678;-0.02459;2.79383;,
 1.35162;0.01322;3.26309;,
 1.28586;-0.02459;3.10433;,
 0.68905;0.01322;3.46408;,
 0.65552;-0.02459;3.29554;,
 -0.00000;0.01322;3.53194;,
 -0.00000;-0.02459;3.36011;,
 -0.68905;0.01322;3.46408;,
 -0.65553;-0.02459;3.29554;,
 -1.35162;0.01322;3.26309;,
 -1.28586;-0.02459;3.10433;,
 -1.96225;0.01322;2.93670;,
 -1.86678;-0.02459;2.79383;,
 -2.49746;0.01322;2.49746;,
 -2.37596;-0.02459;2.37595;,
 -2.93671;0.01322;1.96224;,
 -2.79383;-0.02459;1.86677;,
 -3.26309;0.01322;1.35161;,
 -3.10433;-0.02459;1.28585;,
 -3.46408;0.01322;0.68905;,
 -3.29554;-0.02459;0.65552;,
 -3.53194;0.01322;-0.00000;,
 -3.36011;-0.02459;-0.00000;,
 -3.46408;0.01322;-0.68905;,
 -3.29554;-0.02459;-0.65553;,
 -3.26309;0.01322;-1.35162;,
 -3.10433;-0.02459;-1.28586;,
 -2.93670;0.01322;-1.96225;,
 -2.79383;-0.02459;-1.86678;,
 -2.49746;0.01322;-2.49747;,
 -2.37595;-0.02459;-2.37596;,
 -1.96224;0.01322;-2.93671;,
 -1.86677;-0.02459;-2.79383;,
 -1.35161;0.01322;-3.26309;,
 -1.28585;-0.02459;-3.10433;,
 -0.68904;0.01322;-3.46408;,
 -0.65552;-0.02459;-3.29554;,
 0.00000;0.01322;-3.53194;,
 0.00000;-0.02459;-3.36011;,
 0.02961;-0.06951;-0.14887;,
 0.00000;-0.06951;-0.15178;,
 0.05809;-0.06951;-0.14023;,
 0.08433;-0.06951;-0.12620;,
 0.10733;-0.06951;-0.10733;,
 0.12620;-0.06951;-0.08433;,
 0.14023;-0.06951;-0.05809;,
 0.14887;-0.06951;-0.02961;,
 0.15178;-0.06951;-0.00000;,
 0.14887;-0.06951;0.02961;,
 0.14023;-0.06951;0.05809;,
 0.12620;-0.06951;0.08433;,
 0.10733;-0.06951;0.10733;,
 0.08433;-0.06951;0.12620;,
 0.05809;-0.06951;0.14023;,
 0.02961;-0.06951;0.14887;,
 0.00000;-0.06951;0.15178;,
 -0.02961;-0.06951;0.14887;,
 -0.05809;-0.06951;0.14023;,
 -0.08433;-0.06951;0.12620;,
 -0.10733;-0.06951;0.10733;,
 -0.12620;-0.06951;0.08433;,
 -0.14023;-0.06951;0.05808;,
 -0.14887;-0.06951;0.02961;,
 -0.15178;-0.06951;0.00000;,
 -0.14887;-0.06951;-0.02961;,
 -0.14023;-0.06951;-0.05809;,
 -0.12620;-0.06951;-0.08433;,
 -0.10733;-0.06951;-0.10733;,
 -0.08433;-0.06951;-0.12620;,
 -0.05808;-0.06951;-0.14023;,
 -0.02961;-0.06951;-0.14887;,
 0.00000;-0.06951;-0.15178;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;0.00254;0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;,
 0.00000;-0.22580;-0.00000;;
 
 128;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 4;16,18,19,17;,
 4;18,20,21,19;,
 4;20,22,23,21;,
 4;22,24,25,23;,
 4;24,26,27,25;,
 4;26,28,29,27;,
 4;28,30,31,29;,
 4;30,32,33,31;,
 4;32,34,35,33;,
 4;34,36,37,35;,
 4;36,38,39,37;,
 4;38,40,41,39;,
 4;40,42,43,41;,
 4;42,44,45,43;,
 4;44,46,47,45;,
 4;46,48,49,47;,
 4;48,50,51,49;,
 4;50,52,53,51;,
 4;52,54,55,53;,
 4;54,56,57,55;,
 4;56,58,59,57;,
 4;58,60,61,59;,
 4;60,62,63,61;,
 4;62,64,65,63;,
 4;3,2,66,67;,
 4;2,5,68,66;,
 4;5,7,69,68;,
 4;7,9,70,69;,
 4;9,11,71,70;,
 4;11,13,72,71;,
 4;13,15,73,72;,
 4;15,17,74,73;,
 4;17,19,75,74;,
 4;19,21,76,75;,
 4;21,23,77,76;,
 4;23,25,78,77;,
 4;25,27,79,78;,
 4;27,29,80,79;,
 4;29,31,81,80;,
 4;31,33,82,81;,
 4;33,35,83,82;,
 4;35,37,84,83;,
 4;37,39,85,84;,
 4;39,41,86,85;,
 4;41,43,87,86;,
 4;43,45,88,87;,
 4;45,47,89,88;,
 4;47,49,90,89;,
 4;49,51,91,90;,
 4;51,53,92,91;,
 4;53,55,93,92;,
 4;55,57,94,93;,
 4;57,59,95,94;,
 4;59,61,96,95;,
 4;61,63,97,96;,
 4;63,65,98,97;,
 3;99,1,0;,
 3;100,4,1;,
 3;101,6,4;,
 3;102,8,6;,
 3;103,10,8;,
 3;104,12,10;,
 3;105,14,12;,
 3;106,16,14;,
 3;107,18,16;,
 3;108,20,18;,
 3;109,22,20;,
 3;110,24,22;,
 3;111,26,24;,
 3;112,28,26;,
 3;113,30,28;,
 3;114,32,30;,
 3;115,34,32;,
 3;116,36,34;,
 3;117,38,36;,
 3;118,40,38;,
 3;119,42,40;,
 3;120,44,42;,
 3;121,46,44;,
 3;122,48,46;,
 3;123,50,48;,
 3;124,52,50;,
 3;125,54,52;,
 3;126,56,54;,
 3;127,58,56;,
 3;128,60,58;,
 3;129,62,60;,
 3;130,64,62;,
 3;131,67,66;,
 3;132,66,68;,
 3;133,68,69;,
 3;134,69,70;,
 3;135,70,71;,
 3;136,71,72;,
 3;137,72,73;,
 3;138,73,74;,
 3;139,74,75;,
 3;140,75,76;,
 3;141,76,77;,
 3;142,77,78;,
 3;143,78,79;,
 3;144,79,80;,
 3;145,80,81;,
 3;146,81,82;,
 3;147,82,83;,
 3;148,83,84;,
 3;149,84,85;,
 3;150,85,86;,
 3;151,86,87;,
 3;152,87,88;,
 3;153,88,89;,
 3;154,89,90;,
 3;155,90,91;,
 3;156,91,92;,
 3;157,92,93;,
 3;158,93,94;,
 3;159,94,95;,
 3;160,95,96;,
 3;161,96,97;,
 3;162,97,98;;
 
 MeshMaterialList {
  3;
  128;
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  0,
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  0,
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  0,
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  0,
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  0,
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  0,
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  0,
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  0,
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  0,
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  0,
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  0,
  2,
  1,
  1,
  1,
  1,
  1,
  2,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.318000;0.318000;0.318000;0.476000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.318000;0.318000;0.318000;0.198000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.318000;0.318000;0.318000;0.317000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  131;
  -0.000000;1.000000;0.000000;,
  0.000000;-0.976636;-0.214898;,
  0.041925;-0.976636;-0.210769;,
  0.082238;-0.976636;-0.198540;,
  0.119391;-0.976636;-0.178681;,
  0.151956;-0.976636;-0.151956;,
  0.178681;-0.976637;-0.119391;,
  0.198540;-0.976636;-0.082238;,
  0.210769;-0.976637;-0.041925;,
  0.214898;-0.976636;-0.000000;,
  0.210769;-0.976636;0.041925;,
  0.198540;-0.976636;0.082238;,
  0.178681;-0.976636;0.119391;,
  0.151956;-0.976636;0.151956;,
  0.119391;-0.976636;0.178681;,
  0.082238;-0.976636;0.198540;,
  0.041925;-0.976636;0.210769;,
  0.000000;-0.976636;0.214898;,
  -0.041925;-0.976636;0.210769;,
  -0.082238;-0.976636;0.198540;,
  -0.119391;-0.976636;0.178681;,
  -0.151956;-0.976636;0.151956;,
  -0.178682;-0.976636;0.119391;,
  -0.198541;-0.976636;0.082238;,
  -0.210769;-0.976636;0.041925;,
  -0.214898;-0.976636;0.000000;,
  -0.210769;-0.976636;-0.041925;,
  -0.198540;-0.976636;-0.082238;,
  -0.178681;-0.976636;-0.119391;,
  -0.151955;-0.976636;-0.151956;,
  -0.119391;-0.976636;-0.178681;,
  -0.082237;-0.976636;-0.198540;,
  -0.041924;-0.976636;-0.210769;,
  0.000000;-0.993362;-0.115027;,
  0.022441;-0.993362;-0.112817;,
  0.044019;-0.993362;-0.106271;,
  0.063906;-0.993362;-0.095642;,
  0.081337;-0.993362;-0.081337;,
  0.095642;-0.993362;-0.063906;,
  0.106271;-0.993362;-0.044019;,
  0.112817;-0.993362;-0.022441;,
  0.115028;-0.993362;-0.000000;,
  0.112817;-0.993362;0.022441;,
  0.106272;-0.993362;0.044019;,
  0.095642;-0.993362;0.063906;,
  0.081337;-0.993362;0.081337;,
  0.063906;-0.993362;0.095642;,
  0.044019;-0.993362;0.106272;,
  0.022441;-0.993362;0.112817;,
  0.000000;-0.993362;0.115028;,
  -0.022441;-0.993362;0.112817;,
  -0.044019;-0.993362;0.106272;,
  -0.063906;-0.993362;0.095642;,
  -0.081337;-0.993362;0.081337;,
  -0.095642;-0.993362;0.063906;,
  -0.106272;-0.993362;0.044019;,
  -0.112817;-0.993362;0.022441;,
  -0.115028;-0.993362;0.000000;,
  -0.112817;-0.993362;-0.022441;,
  -0.106272;-0.993362;-0.044019;,
  -0.095642;-0.993362;-0.063906;,
  -0.081336;-0.993362;-0.081337;,
  -0.063906;-0.993362;-0.095642;,
  -0.044019;-0.993362;-0.106272;,
  -0.022441;-0.993362;-0.112817;,
  0.000000;-0.918513;-0.395391;,
  0.077137;-0.918512;-0.387795;,
  0.151306;-0.918513;-0.365295;,
  0.219669;-0.918513;-0.328754;,
  0.279584;-0.918513;-0.279584;,
  0.328754;-0.918513;-0.219669;,
  0.365295;-0.918513;-0.151306;,
  0.387795;-0.918512;-0.077137;,
  0.395391;-0.918513;-0.000000;,
  0.387795;-0.918512;0.077137;,
  0.365295;-0.918513;0.151306;,
  0.328754;-0.918513;0.219669;,
  0.279584;-0.918513;0.279584;,
  0.219669;-0.918513;0.328754;,
  0.151306;-0.918513;0.365295;,
  0.077137;-0.918512;0.387795;,
  0.000000;-0.918513;0.395391;,
  -0.077137;-0.918512;0.387795;,
  -0.151312;-0.918513;0.365293;,
  -0.219671;-0.918512;0.328755;,
  -0.279581;-0.918513;0.279588;,
  -0.328756;-0.918513;0.219667;,
  -0.365296;-0.918512;0.151305;,
  -0.387795;-0.918512;0.077139;,
  -0.395391;-0.918513;0.000000;,
  -0.387795;-0.918512;-0.077137;,
  -0.365293;-0.918513;-0.151312;,
  -0.328755;-0.918512;-0.219671;,
  -0.279588;-0.918513;-0.279581;,
  -0.219667;-0.918513;-0.328756;,
  -0.151305;-0.918512;-0.365296;,
  -0.077139;-0.918512;-0.387794;,
  0.489003;-0.866842;0.097269;,
  -0.000590;0.999995;0.002966;,
  -0.000000;0.999995;0.003024;,
  -0.001157;0.999995;0.002794;,
  -0.001680;0.999995;0.002514;,
  -0.002138;0.999995;0.002138;,
  -0.002514;0.999995;0.001680;,
  -0.002794;0.999995;0.001157;,
  -0.002966;0.999995;0.000590;,
  -0.003024;0.999995;0.000000;,
  -0.002966;0.999995;-0.000590;,
  -0.002794;0.999995;-0.001157;,
  -0.002514;0.999995;-0.001680;,
  -0.002138;0.999995;-0.002138;,
  -0.001680;0.999995;-0.002514;,
  -0.001157;0.999996;-0.002794;,
  -0.000590;0.999995;-0.002966;,
  -0.000000;0.999995;-0.003024;,
  0.000590;0.999995;-0.002966;,
  0.001157;0.999995;-0.002794;,
  0.001680;0.999996;-0.002514;,
  0.002138;0.999996;-0.002138;,
  0.002514;0.999995;-0.001680;,
  0.002794;0.999995;-0.001157;,
  0.002966;0.999995;-0.000590;,
  0.003024;0.999995;-0.000000;,
  0.002966;0.999995;0.000590;,
  0.002794;0.999996;0.001157;,
  0.002514;0.999995;0.001680;,
  0.002138;0.999995;0.002138;,
  0.001680;0.999995;0.002514;,
  0.001157;0.999995;0.002794;,
  0.000590;0.999995;0.002966;,
  -0.583163;-0.804031;-0.115999;;
  128;
  4;1,2,34,33;,
  4;2,3,35,34;,
  4;3,4,36,35;,
  4;4,5,37,36;,
  4;5,6,38,37;,
  4;6,7,39,38;,
  4;7,8,40,39;,
  4;8,9,41,40;,
  4;9,10,42,41;,
  4;10,11,43,42;,
  4;11,12,44,43;,
  4;12,13,45,44;,
  4;13,14,46,45;,
  4;14,15,47,46;,
  4;15,16,48,47;,
  4;16,17,49,48;,
  4;17,18,50,49;,
  4;18,19,51,50;,
  4;19,20,52,51;,
  4;20,21,53,52;,
  4;21,22,54,53;,
  4;22,23,55,54;,
  4;23,24,56,55;,
  4;24,25,57,56;,
  4;25,26,58,57;,
  4;26,27,59,58;,
  4;27,28,60,59;,
  4;28,29,61,60;,
  4;29,30,62,61;,
  4;30,31,63,62;,
  4;31,32,64,63;,
  4;32,1,33,64;,
  4;33,34,66,65;,
  4;34,35,67,66;,
  4;35,36,68,67;,
  4;36,37,69,68;,
  4;37,38,70,69;,
  4;38,39,71,70;,
  4;39,40,72,71;,
  4;40,41,73,72;,
  4;41,42,74,73;,
  4;42,43,75,74;,
  4;43,44,76,75;,
  4;44,45,77,76;,
  4;45,46,78,77;,
  4;46,47,79,78;,
  4;47,48,80,79;,
  4;48,49,81,80;,
  4;49,50,82,81;,
  4;50,51,83,82;,
  4;51,52,84,83;,
  4;52,53,85,84;,
  4;53,54,86,85;,
  4;54,55,87,86;,
  4;55,56,88,87;,
  4;56,57,89,88;,
  4;57,58,90,89;,
  4;58,59,91,90;,
  4;59,60,92,91;,
  4;60,61,93,92;,
  4;61,62,94,93;,
  4;62,63,95,94;,
  4;63,64,96,95;,
  4;64,33,65,96;,
  3;0,98,99;,
  3;0,100,98;,
  3;0,101,100;,
  3;0,102,101;,
  3;0,103,102;,
  3;0,104,103;,
  3;0,105,104;,
  3;0,106,105;,
  3;0,107,106;,
  3;0,108,107;,
  3;0,109,108;,
  3;0,110,109;,
  3;0,111,110;,
  3;0,112,111;,
  3;0,113,112;,
  3;0,114,113;,
  3;0,115,114;,
  3;0,116,115;,
  3;0,117,116;,
  3;0,118,117;,
  3;0,119,118;,
  3;0,120,119;,
  3;0,121,120;,
  3;0,122,121;,
  3;0,123,122;,
  3;0,124,123;,
  3;0,125,124;,
  3;0,126,125;,
  3;0,127,126;,
  3;0,128,127;,
  3;0,129,128;,
  3;0,99,129;,
  3;97,65,66;,
  3;97,66,67;,
  3;97,67,68;,
  3;97,68,69;,
  3;97,69,70;,
  3;97,70,71;,
  3;97,71,72;,
  3;97,72,73;,
  3;97,73,74;,
  3;97,74,75;,
  3;97,75,76;,
  3;97,76,77;,
  3;97,77,78;,
  3;97,78,79;,
  3;97,79,80;,
  3;97,80,81;,
  3;97,81,82;,
  3;97,82,83;,
  3;130,83,84;,
  3;130,84,85;,
  3;130,85,86;,
  3;130,86,87;,
  3;130,87,88;,
  3;130,88,89;,
  3;130,89,90;,
  3;130,90,91;,
  3;130,91,92;,
  3;130,92,93;,
  3;130,93,94;,
  3;130,94,95;,
  3;130,95,96;,
  3;130,96,65;;
 }
 MeshTextureCoords {
  163;
  0.000000;0.000000;
  0.031250;0.000000;
  0.031250;0.500000;
  0.000000;0.500000;
  0.062500;0.000000;
  0.062500;0.500000;
  0.093750;0.000000;
  0.093750;0.500000;
  0.125000;0.000000;
  0.125000;0.500000;
  0.156250;0.000000;
  0.156250;0.500000;
  0.187500;0.000000;
  0.187500;0.500000;
  0.218750;0.000000;
  0.218750;0.500000;
  0.250000;0.000000;
  0.250000;0.500000;
  0.281250;0.000000;
  0.281250;0.500000;
  0.312500;0.000000;
  0.312500;0.500000;
  0.343750;0.000000;
  0.343750;0.500000;
  0.375000;0.000000;
  0.375000;0.500000;
  0.406250;0.000000;
  0.406250;0.500000;
  0.437500;0.000000;
  0.437500;0.500000;
  0.468750;0.000000;
  0.468750;0.500000;
  0.500000;0.000000;
  0.500000;0.500000;
  0.531250;0.000000;
  0.531250;0.500000;
  0.562500;0.000000;
  0.562500;0.500000;
  0.593750;0.000000;
  0.593750;0.500000;
  0.625000;0.000000;
  0.625000;0.500000;
  0.656250;0.000000;
  0.656250;0.500000;
  0.687500;0.000000;
  0.687500;0.500000;
  0.718750;0.000000;
  0.718750;0.500000;
  0.750000;0.000000;
  0.750000;0.500000;
  0.781250;0.000000;
  0.781250;0.500000;
  0.812500;0.000000;
  0.812500;0.500000;
  0.843750;0.000000;
  0.843750;0.500000;
  0.875000;0.000000;
  0.875000;0.500000;
  0.906250;0.000000;
  0.906250;0.500000;
  0.937500;0.000000;
  0.937500;0.500000;
  0.968750;0.000000;
  0.968750;0.500000;
  1.000000;0.000000;
  1.000000;0.500000;
  0.031250;1.000000;
  0.000000;1.000000;
  0.062500;1.000000;
  0.093750;1.000000;
  0.125000;1.000000;
  0.156250;1.000000;
  0.187500;1.000000;
  0.218750;1.000000;
  0.250000;1.000000;
  0.281250;1.000000;
  0.312500;1.000000;
  0.343750;1.000000;
  0.375000;1.000000;
  0.406250;1.000000;
  0.437500;1.000000;
  0.468750;1.000000;
  0.500000;1.000000;
  0.531250;1.000000;
  0.562500;1.000000;
  0.593750;1.000000;
  0.625000;1.000000;
  0.656250;1.000000;
  0.687500;1.000000;
  0.718750;1.000000;
  0.750000;1.000000;
  0.781250;1.000000;
  0.812500;1.000000;
  0.843750;1.000000;
  0.875000;1.000000;
  0.906250;1.000000;
  0.937500;1.000000;
  0.968750;1.000000;
  1.000000;1.000000;
  0.015620;0.000000;
  0.046880;0.000000;
  0.078120;0.000000;
  0.109380;0.000000;
  0.140620;0.000000;
  0.171880;0.000000;
  0.203120;0.000000;
  0.234380;0.000000;
  0.265620;0.000000;
  0.296880;0.000000;
  0.328120;0.000000;
  0.359380;0.000000;
  0.390620;0.000000;
  0.421880;0.000000;
  0.453120;0.000000;
  0.484380;0.000000;
  0.515620;0.000000;
  0.546880;0.000000;
  0.578120;0.000000;
  0.609380;0.000000;
  0.640620;0.000000;
  0.671880;0.000000;
  0.703120;0.000000;
  0.734380;0.000000;
  0.765620;0.000000;
  0.796880;0.000000;
  0.828120;0.000000;
  0.859380;0.000000;
  0.890620;0.000000;
  0.921880;0.000000;
  0.953120;0.000000;
  0.984380;0.000000;
  0.015620;1.000000;
  0.046880;1.000000;
  0.078120;1.000000;
  0.109380;1.000000;
  0.140620;1.000000;
  0.171880;1.000000;
  0.203120;1.000000;
  0.234380;1.000000;
  0.265620;1.000000;
  0.296880;1.000000;
  0.328120;1.000000;
  0.359380;1.000000;
  0.390620;1.000000;
  0.421880;1.000000;
  0.453120;1.000000;
  0.484380;1.000000;
  0.515620;1.000000;
  0.546880;1.000000;
  0.578120;1.000000;
  0.609380;1.000000;
  0.640620;1.000000;
  0.671880;1.000000;
  0.703120;1.000000;
  0.734380;1.000000;
  0.765620;1.000000;
  0.796880;1.000000;
  0.828120;1.000000;
  0.859380;1.000000;
  0.890620;1.000000;
  0.921880;1.000000;
  0.953120;1.000000;
  0.984380;1.000000;;
 }
}