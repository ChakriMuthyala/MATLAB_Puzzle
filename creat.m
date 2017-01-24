function s = creat
done = 0;
while done == 0
    m = reshape([randperm(15) 16],4,4);
    ind = find(m==14);
    ind1 = find(m==15);
    s=m;
    if abs(ind-ind1)<6 && abs(ind-ind1)>3
        done = 1;
    end
end