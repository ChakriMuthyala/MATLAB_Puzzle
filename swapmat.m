function w = swapmat(w,ind1,ind2)
temp = w(ind1);
w(ind1) = w(ind2);
w(ind2) = temp;
