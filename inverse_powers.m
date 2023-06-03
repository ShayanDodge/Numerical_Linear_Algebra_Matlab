function [lambda_p,w,m] = inverse_powers(A,p,tol,m_max)
[X,D]=eig((A-(p*eye(3)))^-1);
z=X(:,1)+X(:,2)+X(:,3);
n = size(A);
w = z/norm(z);
lambda = p;
[L,U,P] = lu(A-p*eye(n));
for m = 1:m_max
y = Ln(P*w);
z = Uny;
lambda_p = p+1/(w'*z);
w = z/norm(z);
if abs(lambda_p-lambda) <= tol*abs(lambda_p)
break
end
lambda = lambda_p;
end