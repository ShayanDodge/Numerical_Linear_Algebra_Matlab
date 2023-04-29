clc;
clear;
close all;

delta=10^-3;
x=-1:delta:1;
xd=-1:delta:1+delta;
x_new=linspace(-1,1,10);

f=(1-xd.^2).^(5/2);
fd=diff(f)./delta;
f=(1-x.^2).^(5/2);

fd0=fd(1);
fdn=fd(end);

clear fd xd

s=spline(x,f,x_new);
S=spline(x,[fd0 f fdn],x_new); 
plot(x,f,'r',x_new,s,'*',x_new,S,'O','MarkerSize',20);
legend('function','spline_not a knot','spline_Cons')










