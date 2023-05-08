
n=5:14;
err=zeros(length(n),1)
Table=zeros(length(n),3);

for i=1:length(n)
    A=hilb(n(i));
    b=sum(A,2);
    u=ones(n(i),1);
    x=A\b;
    err(i)=norm(u-x,inf)/norm(u,inf);
    
    Table(i,1)=n(i);
    Table(i,2)=err(i);
    Table(i,3)=cond(A,inf);
end