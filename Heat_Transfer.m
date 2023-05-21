R=[0.036 4.01 0.408 0.038 ];
A=[R(1)+R(2) -R(1)      0;...
   R(3)      -R(3)-R(2) R(2);...
   0          R(4)      -R(3)-R(4)];
Ti=20;
To=[-10,1,2];
q=zeros(length(To),1);
[L,U,P]=lu(A);

for i=1:length(To)
    b=[Ti*R(2);0;-To(i)*R(3)];
    y=L\P*b;
    T=U\y;
    q(i)=(Ti-T(1))/R(1);
end
plot(To,q)
