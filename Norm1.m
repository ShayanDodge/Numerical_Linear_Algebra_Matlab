x=input(' x= ')
[n,m]=size(x);
Y=zeros(1,m);
for i=1:n
    Y(1,:)=x(i,:)+Y(1,:);
end
norm1=max(Y)