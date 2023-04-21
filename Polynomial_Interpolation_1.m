% The polynomial interpolating the data (0; 1), (1; ?1), (2; 1), (2; 2)
clear 
clc

Data=[0 1 2 3;1 -1 1 3];
p=polyfit(Data(1,:),Data(2,:),size(Data,2)-1);

In=linspace(min(Data(1,:)),max(Data(1,:)),10^6);
Value=polyval(p,In);
plot(Data(1,:),Data(2,:),'ro',In,Value,'g');



















