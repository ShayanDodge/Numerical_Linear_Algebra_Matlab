function [ x ] = backward( A,b )

x=zeros(size(b,1),1);

for i=size(A,1):-1:1
    x(i)=b(i)/A(i,i);
    for j=i+1:size(b,1)
    x(i)=x(i)-A(i,j).*x(j)./A(i,i);
    end
end

end

