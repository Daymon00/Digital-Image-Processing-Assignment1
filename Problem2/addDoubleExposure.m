function outputImage = addDoubleExposure(imagePath1, imagePath2)
    image1 = imread(imagePath1);
    image2 = imread(imagePath2);
    outputImage = zeros(max(size(image1,1), size(image2,1)), max(size(image1,2), size(image2,2)), 3, 'uint8');
    outputImage(1:size(image1,1), 1:size(image1,2), :) = image1;
    outputImage(1:size(image2,1), 1:size(image2,2), :) = outputImage(1:size(image2,1), 1:size(image2,2), :) + image2;
    outputImage = min(outputImage, 255);
end