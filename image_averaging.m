clc; 
clear; 
close all;
image1 = imread('owl.jpg');
image2 = imread(['pic.jpg']);
grayImage1 = rgb2gray(image1);
grayImage2 = rgb2gray(image2);
grayImage2 = imresize(grayImage2, size(grayImage1));
% Perform image averaging
averagedImage = (double(grayImage1) +double(grayImage2)) / 2;
% Display the images
subplot(1, 3, 1), imshow(grayImage1), title('Image1');
subplot(1, 3, 2), imshow(grayImage2), title('Image2');
subplot(1, 3, 3), imshow(uint8(averagedImage)),
title('Image Averaging');