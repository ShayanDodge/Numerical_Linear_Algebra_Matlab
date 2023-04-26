%Let us compute and graphically represent the polynomial 
%and the \not-a-knot" cubic spline interpolating 
%the Runge function at 15 Chebyshev nodes defined in
%the interval [?5:5].
clc
clear
close all

a=-5;
b=5;
n=15;
i=1:n+1;
z=-cos(((2.*i-1).*pi)./(2.*(n+1)));
x=((b-a)./2).*z+((b+a)./2);
t=linspace(a,b,1000);

f=@(x)(1./(1+x.^2));

c=polyfit(x,f(x),n);
p=polyval(c,x);

s=spline(x,f(x),t);
plot(t,f(t),x,p,'r*',t,s,'go')