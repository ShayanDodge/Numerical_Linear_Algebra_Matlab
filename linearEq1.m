clc
clear

A=input(' A = ');
B=sum(A,2);
X=zeros(size(A,2),1);

for i=1:size(A,1)
    X(i)=B(i)/A(i,i);
end
    

