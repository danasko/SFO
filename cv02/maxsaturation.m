function res = maxsaturation(I)
    I = im2double(I);

    hsv = rgb2hsv(I);
    hsv(:,:,2) = 1;
    res = hsv2rgb(hsv);
    
    imshow(res)
end