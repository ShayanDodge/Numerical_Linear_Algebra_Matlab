%%  Function in order to approximate the value of the function f(x) = exp(x)
%   in a neighborhood of x = 0 by means of Taylor polynomial
function [ y ] = exp_t( x  , tol )
y=zeros(1,size(x,2));
for j=1:size(x,2)
    y(j)=1;
    i=1;
    while (exp(x(j))-y(j)) > tol
        y(j)=y(j)+(x(j)^i)/(fact(i));
        i=i+1;
    end
end
end