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
 30;
 0.00001;0.68705;0.00002;,
 -0.02260;0.68705;0.00750;,
 -0.02260;0.62544;0.31522;,
 0.00001;0.62544;0.31522;,
 -0.02260;-0.30736;0.31645;,
 0.00001;-0.30736;0.31645;,
 -0.02260;-0.35788;0.00750;,
 0.00001;-0.35788;0.00002;,
 0.00001;-0.35788;0.00002;,
 -0.02260;-0.35788;0.00750;,
 -0.02260;-0.05229;0.00724;,
 0.00001;-0.05229;-0.00023;,
 -0.02260;-0.10281;0.06385;,
 0.00001;-0.10281;0.06385;,
 -0.02260;-0.06461;0.09342;,
 0.00001;-0.06461;0.09342;,
 -0.02260;-0.02641;0.10328;,
 0.00001;-0.02641;0.10328;,
 -0.02260;0.01179;0.09589;,
 0.00001;0.01179;0.09589;,
 -0.02260;0.04136;0.07494;,
 0.00001;0.04136;0.07494;,
 -0.02260;-0.01245;0.00748;,
 0.00001;-0.01245;0.00001;,
 -0.02260;0.68705;0.00750;,
 0.00001;0.68705;0.00002;,
 -0.02260;0.62544;0.31522;,
 -0.02260;-0.30736;0.31645;,
 0.00001;0.62544;0.31522;,
 0.00001;-0.30736;0.31645;;
 
 29;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 4;8,9,10,11;,
 4;11,10,12,13;,
 4;13,12,14,15;,
 4;15,14,16,17;,
 4;17,16,18,19;,
 4;19,18,20,21;,
 4;21,20,22,23;,
 4;23,22,24,25;,
 3;26,24,20;,
 3;20,18,26;,
 3;18,16,26;,
 3;16,27,26;,
 3;27,16,14;,
 3;14,12,27;,
 3;10,9,12;,
 3;9,27,12;,
 3;22,20,24;,
 3;23,25,21;,
 3;25,28,21;,
 3;19,21,28;,
 3;28,17,19;,
 3;28,29,17;,
 3;29,15,17;,
 3;13,15,29;,
 3;13,29,8;,
 3;11,13,8;;
 
 MeshMaterialList {
  1;
  29;
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
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "blender2.dds";
   }
  }
 }
 MeshNormals {
  14;
  0.031706;0.980493;0.193979;,
  0.000000;0.001319;0.999999;,
  0.026071;-0.986859;0.159468;,
  -0.313833;-0.000793;-0.949478;,
  0.100649;0.761963;0.639752;,
  0.000000;0.440051;-0.897973;,
  0.000000;0.030659;-0.999530;,
  0.000000;-0.392853;-0.919601;,
  0.000000;-0.578007;-0.816032;,
  0.094985;-0.793520;0.601086;,
  0.000000;0.612171;-0.790726;,
  -0.313850;0.000020;-0.949473;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;;
  29;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;10,10,5,5;,
  4;5,5,6,6;,
  4;6,6,7,7;,
  4;7,7,8,8;,
  4;9,9,9,9;,
  4;11,11,11,11;,
  3;12,12,12;,
  3;12,12,12;,
  3;12,12,12;,
  3;12,12,12;,
  3;12,12,12;,
  3;12,12,12;,
  3;12,12,12;,
  3;12,12,12;,
  3;12,12,12;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;,
  3;13,13,13;;
 }
 MeshTextureCoords {
  30;
  -0.113690;0.299230;
  -0.115910;0.299230;
  -0.115910;0.305270;
  -0.113690;0.305270;
  -0.115910;0.396730;
  -0.113690;0.396730;
  -0.115910;0.401690;
  -0.113690;0.401690;
  -0.138480;0.285420;
  -0.140350;0.285420;
  -0.140280;0.209380;
  -0.138420;0.209380;
  -0.154370;0.221950;
  -0.154370;0.221950;
  -0.161730;0.212440;
  -0.161730;0.212440;
  -0.164180;0.202940;
  -0.164180;0.202940;
  -0.162340;0.193430;
  -0.162340;0.193430;
  -0.157130;0.186070;
  -0.157130;0.186070;
  -0.140340;0.199460;
  -0.138480;0.199460;
  -0.140350;0.025390;
  -0.138480;0.025390;
  -0.216920;0.040720;
  -0.217230;0.272850;
  -0.216920;0.040720;
  -0.217230;0.272850;;
 }
}
