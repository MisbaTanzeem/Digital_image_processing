clear all;
close all;

% Load and convert the image to grayscale
img = imread('owl.jpg'); 

% Display the original image and its histogram
figure;

% Show the original image
subplot(1, 2, 1);
imshow(img);
title('Original Image');

% Calculate and display the histogram
subplot(1, 2, 2);
imhist(img);
title('Histogram');
