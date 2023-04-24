% f(x)=sin(x)/x (x at [0,2pi]) (Degree=5)
x=linspace(0.1,2.*pi,30);
y=sin(x)./x;

for d=5:5:25
    c=polyfit(x,y,d);
    p=polyval(c,x);
    plot(x,p);
    hold on
end
plot(x,y,'o')
