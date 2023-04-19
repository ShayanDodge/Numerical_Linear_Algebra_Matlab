%%  Function in order to approximate the value of the function f(x) = exp(x)
%   in a neighborhood of x = 0 by means of Taylor polynomial
function [ y ] = exp_t( x , tol )
y=1;
i=1;
while (exp(x)-y) > tol
    y=y+(x^i)/(fact(i));
    i=i+1;
end
end