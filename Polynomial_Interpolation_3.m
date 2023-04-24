clc;
clear;
x=linspace(0,2.*pi,50);
% f=@(x) (x.^2).*tan(x);
for d=[5 11]
    c=polyfit(x,f(x),d);
    p=polyval(c,x);
    plot(x,p)
    legend()
    hold on
end
plot(x,f(x),'o')
legend('5',  '11', 'ex')