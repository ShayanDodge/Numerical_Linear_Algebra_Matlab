clc
clear

A = input(' A = ');
b=sum(A,2);
x=zeros(size(b,1),1);

for i=1:size(A,1)
    x(i)=b(i)./A(i,i);
    for j=1:i-1
       x(i)= x(i) - A(i,j).*x(j)./A(i,i);
    end
end