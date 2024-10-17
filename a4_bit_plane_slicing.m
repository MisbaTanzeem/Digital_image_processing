clear all;
close all;
img = rgb2gray(imread('owl.jpg')); 
[rows, cols] = size(img);
bit_planes = zeros(rows, cols, 8);
% Extract bit planes 0 to 7
for i = 1:8
    bit_planes(:, :, i) = bitget(img, i); % Extract the ith bit plane
end
% Display the original image and the bit planes
figure;
subplot(3, 3, 1);
imshow(img);
title('Original Image');

for i = 1:8
    subplot(3, 3, i+1);
    imshow(bit_planes(:, :, i), []);
    title(['Bit Plane ', num2str(i-1)]);
end
