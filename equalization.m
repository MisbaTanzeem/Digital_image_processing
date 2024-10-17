clear all;
close all;
img = rgb2gray(imread('owl.jpg')); 

% Perform histogram equalization
equalized_img = histeq(img);
figure;
subplot(2, 2, 1);
imshow(img);
title('Original Image');

subplot(2, 2, 2);
imhist(img);
title('Histogram Original');

% Equalized Image and Histogram
subplot(2, 2, 3);
imshow(equalized_img);
title('Equalized Image');

subplot(2, 2, 4);
imhist(equalized_img);
title('Histogram Equalized');
