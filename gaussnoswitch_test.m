clc 
clear

A=[2 -1 1 -2; 0 2 0 -1; 1 0 -2 1;0 2 1 1];
b=[0;1;0;4];

n=length(b); % the number of equations
for k=1:n-1
    for i=k+1:n
        A(i,k)=(A(i,k)/A(k,k));
        for j=k+1:n
            A(i,j)=A(i,j)-A(i,k)*A(k,j);
        end
        b(i)=b(i)-A(i,k)*b(k);
    end
end

x=zeros(n,1);
x(n)=b(n)/A(n,n);

for i=n-1:-1:1
    x(i)=b(i)/A(i,i);
    for j=i+1:n
        x(i)=x(i)-A(i,j)*x(j)/A(i,i);
    end
end

A
x
b