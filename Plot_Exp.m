x=10^-2:10^-2:10^-1;
y=exp(x);
y_1=exp_t(x,0.1);

hold on
plot(x,y,'g')
plot(x,y_1,'b')