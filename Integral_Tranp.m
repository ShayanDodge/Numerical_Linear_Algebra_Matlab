clc
clear 
close all
format longe

j=1;
er=1;
I=zeros((9-2)+1,3);
fun=@(t)(2./sqrt(pi)).*exp(-t.^2);

for i=2:9
I(j,1)=2.^i+1;
x=linspace(0,2,I(j,1));
y=fun(x);
I(j,2)=trapz(x,y);
I(j,3)=abs(0.9953222650189527-I(j,2));
j=j+1;
end