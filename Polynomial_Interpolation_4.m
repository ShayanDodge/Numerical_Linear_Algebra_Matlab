% Denoted by pn the polynomial interpolating f(x) = 1/(1+x2) 
% at equispaced nodes xi,i = 1: n + 1, on [?5; 5], we have that
% lim En=inf (n->inf)
clc
clear
close all

n_max=100;
n_min=1;
step=25;

x=linspace(-5,5,n_max+1);
E=zeros(size(x,2),floor((n_max-n_min)/step));
f=@(x) (1./(1+x.^2));
i=1;
for n=n_min:step:n_max
    
c=polyfit(x,f(x),n);
p=polyval(c,x);
E(:,i)=f(x)-p;
i=i+1;

% figure
% subplot(2,2,1)
% plot(x,f(x),'o')
% legend('exact')
% subplot(2,2,2)
% plot(x,p)
% legend(['p',num2str(n)])
% subplot(2,2,[3 4])
% plot(x,E)
% legend('E')
end