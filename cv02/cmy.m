function cmy(I)
    I = im2double(I);
    r = I(:,:,1);
    g = I(:,:,2);
    b = I(:,:,3);
    
    % RGB to CMY
    c = 1-r;
    m = 1-g;
    y = 1-b;
    
    % fill the other two color channels with 0
    % (to display in color)
    z = zeros(size(I,1), size(I,2));
    C = cat(3, c, z, z);
    M = cat(3, z, m, z);
    Y = cat(3, z, z, y);
    
    % CMY back to RGB
    cyan = 1-C;
    magenta = 1-M;
    yellow = 1-Y;
    
    subplot(2,2,1)
    imshow(I);
    subplot(2,2,2)
    imshow(cyan);
    subplot(2,2,3)
    imshow(magenta);
    subplot(2,2,4)
    imshow(yellow);
end