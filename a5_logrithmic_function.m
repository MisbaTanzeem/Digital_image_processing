clear all;
close all;
img = rgb2gray(imread('owl.jpg'));

% Convert the image to double for more precision in calculations
img_double = im2double(img);

% Define a constant (scaling factor)
c = 1;

% Apply logarithmic transformation
log_img = c * log(1 + img_double);

% Scale the result to [0, 255]
log_img_scaled = uint8(255 * mat2gray(log_img));

% Display the original and transformed images
figure;
subplot(1, 2, 1);
imshow(img);
title('Original Image');

subplot(1, 2, 2);
imshow(log_img_scaled);
title('Logarithmic Transformed Image');
