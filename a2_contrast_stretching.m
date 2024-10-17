% MATLAB Code for Enhanced Contrast Stretching
clc;
clear;
close all;
input_img = imread('owl.jpg'); 
figure;
subplot(1, 2, 1);
imshow(input_img);
title('Original Image');
low_percentile = 0.01;  % Lower 1% of pixel intensities
high_percentile = 0.99; % Upper 1% of pixel intensities
% Get the intensity values at the specified percentiles
low_in = double(prctile(input_img(:), low_percentile * 100)) / 255;
high_in = double(prctile(input_img(:), high_percentile * 100)) / 255;
stretched_img = imadjust(input_img, [low_in; high_in], [0; 1]);
% Display the contrast-stretched image
subplot(1, 2, 2);
imshow(stretched_img);
title('Enhanced Contrast Stretched Image');
