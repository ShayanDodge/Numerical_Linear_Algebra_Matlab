% The following Matlab instructions allow us to compute the coefficients of the
% polynomial of degree 6, 8 10 and 12 interpolating the function f (x) = x sin x at
% equispaced points in [0:2pi] (extrema included).
x=linspace(0,2*pi,13);
f=@(x)x.*sin(x);
for i=6:6:12
    c=polyfit(x,f(x),i);
    p=polyval(c,x);
    subplot(1,2,i/6)
    plot(x,p,x,f(x),'-o')
    legend(['d=',num2str(i)],'exact')
end