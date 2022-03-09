function out=gamma_corr(I, gamma)
    I = im2double(I);
    out = I.^gamma;
end