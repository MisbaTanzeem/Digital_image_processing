clear all; 
close all; 
img1 = rgb2gray(imread('owl.jpg')); 
img2 = img1; 
img3 = img1; % For linear slicing
x = 0:255; 
% Binary gray-level slicing transform (with background)
y1 = 10*ones(size(x)); 
y1(128:240) = 200;
% Linear gray-level slicing transform
y2 = x; 
y2(100:130) = 200; % Linear transition for gray levels in this range
% Binary gray-level slicing image
img2(find(img1>=128 & img1<=240)) = 200; 
img2(find(img1<128)) = 10; 
img2(find(img1>240)) = 200;
% Linear gray-level slicing image
img3(find(img1>=100 & img1<=130)) = 200; % Linear mapping for specified range
img3(find(img1<100)) = img1(find(img1<100)); % Retain original intensity for lower values
img3(find(img1>130)) = img1(find(img1>130)); % Retain original intensity for higher values
figure;
subplot(2, 2, 1); 
plot(x, y1); 
title('Binary Gray-level Slicing Transform'); 
axis([0 255 0 255]); 
xlabel('Input Gray Level, r'); 
ylabel('Output Gray Level, s');
subplot(2, 2, 2); 
plot(x, y2); 
title('Linear Gray-level Slicing Transform'); 
axis([0 255 0 255]); 
xlabel('Input Gray Level, r'); 
ylabel('Output Gray Level, s');
subplot(2, 2, 3); 
imshow(img1); 
title('Original Image');
subplot(2, 2, 4); 
imshow(img2);  
title('Binary Gray-level Sliced Image');
figure;
subplot(1, 2, 1);
imshow(img3);  
title('Linear Gray-level Sliced Image');
subplot(1, 2, 2);
imshow(img1);  
title('Original Image');
