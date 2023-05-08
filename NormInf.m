x=input(' x= ')
[n,m]=size(x);
X=zeros(n,1);
for j=1:m
    X(:,1)=x(:,j)+X(:,1);
end
normInf=max(X)