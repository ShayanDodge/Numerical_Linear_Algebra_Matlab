M=input (' M = ');
[n,m]=size(M);

for i=1:n
    for j=i+1:m
            M(i,j)=0;
    end
end