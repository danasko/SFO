function rgb(I)
    r = I(:,:,1);
    g = I(:,:,2);
    b = I(:,:,2);
    
    % fill the other two color channels with 0
    % (to display in color)
    z = zeros(size(I,1), size(I,2));
    R = cat(3,r,z,z);
    G = cat(3,z,g,z);
    B = cat(3,z,z,b);
    
    subplot(2,2,1)
    imshow(I);
    subplot(2,2,2)
    imshow(R);
    subplot(2,2,3)
    imshow(G);
    subplot(2,2,4)
    imshow(B);
end