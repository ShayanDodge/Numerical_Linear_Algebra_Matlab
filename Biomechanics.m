clc
clear
x=[0 0.06 0.14 0.25 0.31 0.47 0.60 0.70]; % Force
y=[0 0.08 0.14 0.20 0.23 0.25 0.28 0.29]; % Deformation
[m,l]=size(x');
A=[x' ones(m,1)];
b=y';
r=rank(A);
[m,n]=size(A);
[Q,R]=qr(A);

c=Q'*b;
c_st=R(1:n,1:n)\c(1:n,1);
coef=polyfit(x,y,1);

x_new=[-.2,.9];
y_new=polyval(c_st',x_new);
plot(x,y,'r*',x_new,y_new,'linewidth',3)
axis([-0.2 0.9 min(y_new) max(y_new)])
