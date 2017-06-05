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
 28;
 0.05390;0.00016;-0.00025;,
 0.06660;0.02380;0.02581;,
 1.55367;0.02380;0.02581;,
 1.54931;0.00016;-0.00025;,
 0.20990;0.02380;0.27909;,
 1.58790;0.02380;0.27909;,
 0.22402;0.00016;0.30515;,
 1.59111;0.00016;0.30515;,
 0.20990;-0.02348;0.27909;,
 1.58790;-0.02348;0.27909;,
 0.06660;-0.02348;0.02581;,
 1.55367;-0.02348;0.02581;,
 0.12623;0.00016;0.12423;,
 1.56686;0.00016;0.12423;,
 -1.54931;0.00016;-0.00025;,
 -1.55367;0.02380;0.02581;,
 -0.06660;0.02380;0.02581;,
 -0.05390;0.00016;-0.00025;,
 -1.58790;0.02380;0.27909;,
 -0.20990;0.02380;0.27909;,
 -1.59111;0.00016;0.30515;,
 -0.22402;0.00016;0.30515;,
 -1.58790;-0.02348;0.27909;,
 -0.20990;-0.02348;0.27909;,
 -1.55367;-0.02348;0.02581;,
 -0.06660;-0.02348;0.02581;,
 -0.12623;0.00016;0.12423;,
 -1.56686;0.00016;0.12423;;
 
 36;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,0,3,11;,
 3;12,1,0;,
 3;12,4,1;,
 3;12,6,4;,
 3;12,8,6;,
 3;12,10,8;,
 3;12,0,10;,
 3;13,3,2;,
 3;13,2,5;,
 3;13,5,7;,
 3;13,7,9;,
 3;13,9,11;,
 3;13,11,3;,
 4;14,15,16,17;,
 4;15,18,19,16;,
 4;18,20,21,19;,
 4;20,22,23,21;,
 4;22,24,25,23;,
 4;24,14,17,25;,
 3;17,16,26;,
 3;16,19,26;,
 3;19,21,26;,
 3;21,23,26;,
 3;23,25,26;,
 3;25,17,26;,
 3;15,14,27;,
 3;18,15,27;,
 3;20,18,27;,
 3;22,20,27;,
 3;24,22,27;,
 3;14,24,27;;
 
 MeshMaterialList {
  4;
  36;
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
    "contender.dds";
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
  36;
  -0.871654;-0.000006;0.490122;,
  0.000000;0.740672;-0.671867;,
  0.000000;0.932918;-0.360089;,
  0.000000;0.932915;0.360097;,
  0.000000;0.740660;0.671880;,
  0.000000;-0.932919;0.360086;,
  0.000000;-0.932918;-0.360089;,
  0.990780;0.000002;-0.135480;,
  0.871654;-0.000006;0.490122;,
  -0.990780;0.000002;-0.135480;,
  0.000000;-0.740676;0.671862;,
  0.000000;-0.740672;-0.671867;,
  -0.861615;-0.116298;0.494058;,
  -0.864641;-0.000000;0.502390;,
  -0.872795;-0.072532;0.482668;,
  -0.879716;-0.000012;0.475500;,
  -0.872795;0.072515;0.482670;,
  -0.861615;0.116293;0.494060;,
  0.990206;-0.000000;-0.139617;,
  0.990463;-0.016735;-0.136762;,
  0.991027;-0.008279;-0.133406;,
  0.991133;0.000003;-0.132876;,
  0.991027;0.008284;-0.133407;,
  0.990463;0.016736;-0.136763;,
  0.864641;-0.000000;0.502390;,
  0.861615;-0.116298;0.494058;,
  0.872795;-0.072532;0.482668;,
  0.879716;-0.000012;0.475500;,
  0.872795;0.072515;0.482670;,
  0.861615;0.116293;0.494060;,
  -0.990463;-0.016735;-0.136762;,
  -0.990206;-0.000000;-0.139617;,
  -0.991027;-0.008279;-0.133406;,
  -0.991133;0.000003;-0.132876;,
  -0.991027;0.008284;-0.133407;,
  -0.990463;0.016736;-0.136763;;
  36;
  4;1,2,2,1;,
  4;2,3,3,2;,
  4;3,4,4,3;,
  4;10,5,5,10;,
  4;5,6,6,5;,
  4;6,11,11,6;,
  3;0,12,13;,
  3;0,14,12;,
  3;0,15,14;,
  3;0,16,15;,
  3;0,17,16;,
  3;0,13,17;,
  3;7,18,19;,
  3;7,19,20;,
  3;7,20,21;,
  3;7,21,22;,
  3;7,22,23;,
  3;7,23,18;,
  4;1,2,2,1;,
  4;2,3,3,2;,
  4;3,4,4,3;,
  4;10,5,5,10;,
  4;5,6,6,5;,
  4;6,11,11,6;,
  3;24,25,8;,
  3;25,26,8;,
  3;26,27,8;,
  3;27,28,8;,
  3;28,29,8;,
  3;29,24,8;,
  3;30,31,9;,
  3;32,30,9;,
  3;33,32,9;,
  3;34,33,9;,
  3;35,34,9;,
  3;31,35,9;;
 }
 MeshTextureCoords {
  28;
  -0.373510;0.041870;
  -0.372180;0.039120;
  -0.215640;0.039120;
  -0.216100;0.041870;
  -0.357090;0.012460;
  -0.212040;0.012460;
  -0.355610;0.009720;
  -0.211700;0.009720;
  -0.357090;0.012460;
  -0.212040;0.012460;
  -0.372180;0.039120;
  -0.215640;0.039120;
  -0.365900;0.028760;
  -0.214250;0.028760;
  -0.216100;0.041870;
  -0.215640;0.039120;
  -0.372180;0.039120;
  -0.373510;0.041870;
  -0.212040;0.012460;
  -0.357090;0.012460;
  -0.211700;0.009720;
  -0.355610;0.009720;
  -0.212040;0.012460;
  -0.357090;0.012460;
  -0.215640;0.039120;
  -0.372180;0.039120;
  -0.365900;0.028760;
  -0.214250;0.028760;;
 }
}
