function res = lowbrightness(I)
    I = im2double(I);
    % 1st option
%     res = I*0.5;
    % 2nd option
    hsv = rgb2hsv(I);
    hsv(:,:,3) = hsv(:,:,3)*0.5;
    res = hsv2rgb(hsv);
    
    imshow(res)
end