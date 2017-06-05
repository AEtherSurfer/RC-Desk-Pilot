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
 68;
 -0.02845;0.84491;-2.22476;,
 0.00475;0.83142;-2.21489;,
 0.03341;0.41547;-2.21105;,
 -0.03541;0.41547;-2.25348;,
 0.02315;0.82394;-2.19342;,
 0.06600;0.41547;-2.16352;,
 -0.00785;0.83654;-2.20075;,
 0.00036;0.41547;-2.19718;,
 -0.03265;0.84661;-2.20561;,
 -0.05244;0.41547;-2.22279;,
 -0.03885;0.84913;-2.21891;,
 -0.06200;0.41547;-2.24495;,
 -0.02845;0.84491;-2.22476;,
 -0.03541;0.41547;-2.25348;,
 0.02307;0.18755;-2.20609;,
 -0.02671;0.18755;-2.25846;,
 0.04120;0.18755;-2.15500;,
 -0.00763;0.18755;-2.19843;,
 -0.04721;0.18755;-2.23197;,
 -0.05090;0.18755;-2.25482;,
 -0.02671;0.18755;-2.25846;,
 0.00617;-0.00014;-2.21072;,
 -0.01367;-0.00014;-2.24061;,
 0.00771;-0.00014;-2.18127;,
 -0.01317;-0.00014;-2.20166;,
 -0.03039;-0.00014;-2.21699;,
 -0.02848;-0.00014;-2.23262;,
 -0.01367;-0.00014;-2.24061;,
 -0.00785;0.86022;-2.20617;,
 -0.00785;0.86022;-2.20617;,
 -0.00785;0.86022;-2.20617;,
 -0.00785;0.86022;-2.20617;,
 -0.00785;0.86022;-2.20617;,
 -0.00785;0.86022;-2.20617;,
 0.03244;-0.84500;-2.22476;,
 -0.00076;-0.83151;-2.21489;,
 -0.02941;-0.41556;-2.21105;,
 0.03940;-0.41556;-2.25348;,
 -0.01916;-0.82404;-2.19342;,
 -0.06200;-0.41556;-2.16352;,
 0.01184;-0.83663;-2.20075;,
 0.00363;-0.41556;-2.19718;,
 0.03664;-0.84671;-2.20561;,
 0.05643;-0.41556;-2.22279;,
 0.04284;-0.84922;-2.21891;,
 0.06600;-0.41556;-2.24495;,
 0.03244;-0.84500;-2.22476;,
 0.03940;-0.41556;-2.25348;,
 -0.01908;-0.18764;-2.20609;,
 0.03070;-0.18764;-2.25846;,
 -0.03721;-0.18764;-2.15500;,
 0.01162;-0.18764;-2.19843;,
 0.05120;-0.18764;-2.23197;,
 0.05489;-0.18764;-2.25482;,
 0.03070;-0.18764;-2.25846;,
 -0.00218;0.00005;-2.21072;,
 0.01766;0.00005;-2.24061;,
 -0.00372;0.00005;-2.18127;,
 0.01716;0.00005;-2.20166;,
 0.03438;0.00005;-2.21699;,
 0.03248;0.00005;-2.23262;,
 0.01766;0.00005;-2.24061;,
 0.01184;-0.86031;-2.20617;,
 0.01184;-0.86031;-2.20617;,
 0.01184;-0.86031;-2.20617;,
 0.01184;-0.86031;-2.20617;,
 0.01184;-0.86031;-2.20617;,
 0.01184;-0.86031;-2.20617;;
 
 48;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;3,2,14,15;,
 4;2,5,16,14;,
 4;5,7,17,16;,
 4;7,9,18,17;,
 4;9,11,19,18;,
 4;11,13,20,19;,
 4;15,14,21,22;,
 4;14,16,23,21;,
 4;16,17,24,23;,
 4;17,18,25,24;,
 4;18,19,26,25;,
 4;19,20,27,26;,
 3;28,1,0;,
 3;29,4,1;,
 3;30,6,4;,
 3;31,8,6;,
 3;32,10,8;,
 3;33,12,10;,
 4;34,35,36,37;,
 4;35,38,39,36;,
 4;38,40,41,39;,
 4;40,42,43,41;,
 4;42,44,45,43;,
 4;44,46,47,45;,
 4;37,36,48,49;,
 4;36,39,50,48;,
 4;39,41,51,50;,
 4;41,43,52,51;,
 4;43,45,53,52;,
 4;45,47,54,53;,
 4;49,48,55,56;,
 4;48,50,57,55;,
 4;50,51,58,57;,
 4;51,52,59,58;,
 4;52,53,60,59;,
 4;53,54,61,60;,
 3;62,35,34;,
 3;63,38,35;,
 3;64,40,38;,
 3;65,42,40;,
 3;66,44,42;,
 3;67,46,44;;
 
 MeshMaterialList {
  4;
  48;
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;;
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "contender.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;0.730000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.071000;0.071000;0.071000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.337000;0.337000;0.337000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  68;
  0.406865;0.605461;-0.684016;,
  0.117954;0.375585;-0.919251;,
  0.625231;0.259335;-0.736092;,
  0.790136;0.264340;-0.553000;,
  -0.229373;0.110842;0.967007;,
  -0.523965;0.310253;0.793224;,
  -0.763434;0.476733;0.435769;,
  0.120600;0.038430;-0.991957;,
  0.706290;0.002379;-0.707918;,
  0.847238;-0.017479;-0.530925;,
  -0.448072;0.007274;0.893968;,
  -0.741836;-0.014866;0.670417;,
  -0.938021;-0.010924;0.346406;,
  0.253518;-0.041861;-0.966425;,
  0.846711;-0.058020;-0.528881;,
  0.940652;-0.094009;-0.326092;,
  -0.613717;0.012448;0.789428;,
  -0.856864;-0.043040;0.513743;,
  -0.985823;-0.073480;0.150845;,
  0.781265;-0.038360;-0.623019;,
  0.904230;-0.074040;-0.420578;,
  0.975314;-0.105472;-0.194005;,
  -0.668840;0.008013;0.743363;,
  -0.904124;-0.051730;0.424126;,
  -0.994869;-0.099309;0.019329;,
  -0.406864;-0.605471;-0.684008;,
  -0.117966;-0.375595;-0.919245;,
  -0.625226;-0.259342;-0.736094;,
  -0.790120;-0.264346;-0.553021;,
  0.229361;-0.110850;0.967009;,
  0.523975;-0.310301;0.793199;,
  0.763447;-0.476805;0.435668;,
  -0.120605;-0.038429;-0.991956;,
  -0.706290;-0.002378;-0.707918;,
  -0.847235;0.017480;-0.530930;,
  0.448072;-0.007274;0.893968;,
  0.741845;0.014865;0.670407;,
  0.938029;0.010922;0.346384;,
  -0.253529;0.041860;-0.966422;,
  -0.846714;0.058019;-0.528876;,
  -0.940654;0.094007;-0.326088;,
  0.613717;-0.012447;0.789428;,
  0.856863;0.043038;0.513745;,
  0.985821;0.073477;0.150857;,
  -0.781273;0.038355;-0.623011;,
  -0.904233;0.074035;-0.420573;,
  -0.975314;0.105467;-0.194006;,
  0.668838;-0.008012;0.743365;,
  0.904122;0.051726;0.424133;,
  0.994869;0.099304;0.019350;,
  -0.244475;0.117001;0.962571;,
  -0.458308;0.031225;0.888245;,
  -0.228653;0.475340;-0.849570;,
  -0.308034;0.047490;-0.950189;,
  -0.624927;0.031342;0.780054;,
  -0.272029;-0.052892;-0.960834;,
  -0.681731;0.011154;0.731517;,
  -0.314274;-0.126598;-0.940853;,
  -0.251386;0.466459;0.848069;,
  0.244461;-0.117009;0.962573;,
  0.458306;-0.031226;0.888246;,
  0.228644;-0.475350;-0.849567;,
  0.308028;-0.047490;-0.950191;,
  0.624922;-0.031340;0.780058;,
  0.272013;0.052892;-0.960839;,
  0.681723;-0.011152;0.731526;,
  0.314247;0.126600;-0.940862;,
  0.251362;-0.466522;0.848042;;
  48;
  4;1,2,8,7;,
  4;2,3,9,8;,
  4;50,4,10,51;,
  4;4,5,11,10;,
  4;5,6,12,11;,
  4;52,1,7,53;,
  4;7,8,14,13;,
  4;8,9,15,14;,
  4;51,10,16,54;,
  4;10,11,17,16;,
  4;11,12,18,17;,
  4;53,7,13,55;,
  4;13,14,20,19;,
  4;14,15,21,20;,
  4;54,16,22,56;,
  4;16,17,23,22;,
  4;17,18,24,23;,
  4;55,13,57,57;,
  3;0,2,1;,
  3;0,3,2;,
  3;58,4,50;,
  3;58,5,4;,
  3;58,6,5;,
  3;0,1,52;,
  4;26,27,33,32;,
  4;27,28,34,33;,
  4;59,29,35,60;,
  4;29,30,36,35;,
  4;30,31,37,36;,
  4;61,26,32,62;,
  4;32,33,39,38;,
  4;33,34,40,39;,
  4;60,35,41,63;,
  4;35,36,42,41;,
  4;36,37,43,42;,
  4;62,32,38,64;,
  4;38,39,45,44;,
  4;39,40,46,45;,
  4;63,41,47,65;,
  4;41,42,48,47;,
  4;42,43,49,48;,
  4;64,38,66,66;,
  3;25,27,26;,
  3;25,28,27;,
  3;67,29,59;,
  3;67,30,29;,
  3;67,31,30;,
  3;25,26,61;;
 }
 MeshTextureCoords {
  68;
  0.000000;0.000000;
  0.166670;0.000000;
  0.166670;0.333330;
  0.000000;0.333330;
  0.333330;0.000000;
  0.333330;0.333330;
  0.500000;0.000000;
  0.500000;0.333330;
  0.666670;0.000000;
  0.666670;0.333330;
  0.833330;0.000000;
  0.833330;0.333330;
  1.000000;0.000000;
  1.000000;0.333330;
  0.166670;0.666670;
  0.000000;0.666670;
  0.333330;0.666670;
  0.500000;0.666670;
  0.666670;0.666670;
  0.833330;0.666670;
  1.000000;0.666670;
  0.166670;1.000000;
  0.000000;1.000000;
  0.333330;1.000000;
  0.500000;1.000000;
  0.666670;1.000000;
  0.833330;1.000000;
  1.000000;1.000000;
  0.083330;0.000000;
  0.250000;0.000000;
  0.416670;0.000000;
  0.583330;0.000000;
  0.750000;0.000000;
  0.916670;0.000000;
  0.000000;0.000000;
  0.166670;0.000000;
  0.166670;0.333330;
  0.000000;0.333330;
  0.333330;0.000000;
  0.333330;0.333330;
  0.500000;0.000000;
  0.500000;0.333330;
  0.666670;0.000000;
  0.666670;0.333330;
  0.833330;0.000000;
  0.833330;0.333330;
  1.000000;0.000000;
  1.000000;0.333330;
  0.166670;0.666670;
  0.000000;0.666670;
  0.333330;0.666670;
  0.500000;0.666670;
  0.666670;0.666670;
  0.833330;0.666670;
  1.000000;0.666670;
  0.166670;1.000000;
  0.000000;1.000000;
  0.333330;1.000000;
  0.500000;1.000000;
  0.666670;1.000000;
  0.833330;1.000000;
  1.000000;1.000000;
  0.083330;0.000000;
  0.250000;0.000000;
  0.416670;0.000000;
  0.583330;0.000000;
  0.750000;0.000000;
  0.916670;0.000000;;
 }
}
