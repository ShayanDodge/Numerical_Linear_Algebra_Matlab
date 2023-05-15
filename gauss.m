function [x] = gauss(A,b)
n=length(b); % the number of equations
for k=1:n-1
    for i=k+1:n
        for j=1:n
            A(i,j)=A(i,j)-(A(k,j)/A(k,k))*A(i,j);
        end
        b(i)=b(i)-(A(i,k)/A(k,k))*b(k);
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