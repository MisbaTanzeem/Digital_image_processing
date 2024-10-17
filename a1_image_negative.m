clc;
clear all;
close all;

% Read the input image
input_image = imread('owl.jpg'); 

% Create the negative image
negative_image = 255 - input_image;

% Display the input and negative images
figure;
subplot(1, 2, 1);
imshow(input_image);
title('Original Image');
subplot(1, 2, 2);
imshow(negative_image);
title('Negative Image');
