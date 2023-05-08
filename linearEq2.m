clc
clear

A = input(' A = ');
b=sum(A,2);
x=zeros(size(b,1),1);

for i=size(A,1):-1:1
    x(i)=b(i)/a(i,i);
    for j=i+1:size(b,1)
    x(i)=x(i)-a(i,j).*x(j);
    end
end

