c = [[1,0,0];[1, .5882,0];[1,1,0];[0,1,0];
    [.5882,.5882,1];[0,0,1];[.5451,0,1]];

rb = zeros(210,210,3);

s = 1;
for i=1:length(c)
    for j=1:3
   rb(:,s:s+29,j) = c(i,j);
    end
   s = s+30;
end

imshow(rb)