clear all;
close all;
img = imread('owl.jpg'); 
img_double = im2double(img);

% Define different gamma values from bright to dark
gamma_values = [0.4, 0.8, 1.2, 2.5];  
figure;

for i = 1:length(gamma_values)
    % Apply power-law (gamma) transformation for each gamma value
    gamma = gamma_values(i);
    power_law_img = img_double.^gamma;
    
    % Scale the result to [0, 255]
    power_law_img_scaled = uint8(255 * mat2gray(power_law_img));
    
    % Display the transformed image in a subplot
    subplot(2, 2, i);
    imshow(power_law_img_scaled);
    title(['Gamma = ', num2str(gamma)]);
end
sgtitle('Power-Law Transformation with Different Gamma Values');
