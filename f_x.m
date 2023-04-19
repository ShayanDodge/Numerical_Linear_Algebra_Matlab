function [ y ] = f_x( x )

if x>0
    y=2*x;
elseif x==0
    y=0;
else
    y=-2*x;
end

end