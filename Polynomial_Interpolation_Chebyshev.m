clc
clear
close all

a=-5;
b=5;
n=13;%13
i=1:n+1;
z=-cos((i-1).*pi./n);
x_Ch=((b-a)/2).*z+((b+a)/2);
x_Eq=linspace(-5,5,n+1);
x_Ex=linspace(-5,5,1000);

f=@(x)(1./(1+x.^2));

c_Eq=polyfit(x_Eq,f(x_Eq),n);
p_Eq=polyval(c_Eq,x_Eq);

c_Ch=polyfit(x_Ch,f(x_Ch),n);
p_Ch=polyval(c_Ch,x_Ch);

plot(x_Ex,f(x_Ex),'g',x_Ch,p_Ch,'r',x_Eq,p_Eq,'b')

