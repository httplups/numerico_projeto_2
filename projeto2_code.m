for i = 1:fs
  X(i) = y(i);
end
acc = X;

m = 1;
h = 2;
for j = 1:(N/fs - 1)
  i = j*fs + 1;
  k = 1;
  while(i <= (h*fs))
  
    X(i) = y(i) - acc(k);
    acc(k) += X(i);
    k++;
    
    if(k > fs)
      k = 1;
    endif
    
    i++;
  endwhile
  h++;
end