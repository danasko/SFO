function rgb_shuffle(I)
    r = I(:,:,1);
    g = I(:,:,2);
    b = I(:,:,3);
    
    GRB = cat(3,g,r,b);
    BRG= cat(3,b,r,g);
    BGR = cat(3,b,g,r);
    
    subplot(2,2,1)
    imshow(I);
    subplot(2,2,2)
    imshow(GRB);
    subplot(2,2,3)
    imshow(BRG);
    subplot(2,2,4)
    imshow(BGR);
end