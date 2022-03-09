function out = adjust(I)
    I = im2double(I);
    interval = [min(I,[],[1,2]) max(I, [], [1,2])];
%     1/out = (interval(2) - interval(1))/(I - interval(1));
    out = 1/((interval(1,2,:) - interval(1,1,:))./(I - interval(1,1,:)));
end