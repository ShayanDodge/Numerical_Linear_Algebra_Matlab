for n=[4 10]
    x=linspace(0,1,n);
    V=vander(x);
    cond1=cond(V,1)
    condI=cond(V,inf)
end