function [ld_after,w,m] = powers(A,tol)
[X,D]=eig(A);
z=X(:,1)+X(:,2)+X(:,3);
w=z/norm(z);
m=0;
ld_before=0;
flg=true;
while flg
    z=A*w;
    ld_after=w'*z;
    if abs(ld_after-ld_before) < tol * abs(ld_after)
        flg=false;
    end
    w=z/norm(z);
    ld_before=ld_after;
    m=m+1;
end
end