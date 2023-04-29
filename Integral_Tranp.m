clc
clear 
close all

fun=@(t)(2./sqrt(pi)).*exp(-t.^2);

i=2;
nodes=2*i;
x=linespace(0,2,nodes);
y=fun(x);
I=trapz(x,y);
er=abs(0.9953222650189527-I);