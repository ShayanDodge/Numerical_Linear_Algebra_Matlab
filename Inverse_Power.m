function [ld_after] = Inverse_Power(A,p,tol)
[X,D]=eig((A-(p*eye(3)))^-1);
z=X(:,1)+X(:,2)+X(:,3);
w=z./norm(z);
n = size(A);
m=0;
ld_before=p;
flg=true;
while flg
    [L,U,P]=lu(A-p*eye(n));
    y=P*L\w;
    z=U\y;
    ld_after=p+(1/(w'*z));
    if abs(ld_after-ld_before) < tol * abs(ld_after)
        flg=false;
    end
    w=z/norm(z);
    ld_before=ld_after;
    m=m+1;
end

end