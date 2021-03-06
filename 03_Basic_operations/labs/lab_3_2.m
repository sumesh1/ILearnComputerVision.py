% Piotr Skalski
% Arithmetic Operations

clearvars;
clc;
close all;

Img_lena = imread('lena.bmp');
Img_jet = imread('jet.bmp');

figure(1)
imshow(imadd(Img_lena,Img_jet,'uint16'),[]); 
title('AADDING');

figure(2);
imshow(imlincomb(3,Img_lena,1,Img_jet,'uint16'),[]);
title('LINEAR COMBINATION');

figure(3);
imshow(imsubtract(int16(Img_lena),int16(Img_jet)),[]); 
title('SUBTRACTING');

figure(4);
imshow(immultiply(int16(Img_lena),int16(Img_jet)),[]); 
title('MULTIPLICATION');

figure(5);
mask = boolean(imread('kolo.bmp'));
imshow(immultiply(Img_lena, mask));
title('MASK');

figure(6);
imshow(imcomplement(Img_jet));
title('NEGATYW');