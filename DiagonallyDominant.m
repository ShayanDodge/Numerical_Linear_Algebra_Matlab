M=input('m = ');
[n,m]=size(M);
sum=0;
sign=1;

% Row
for i=1:n
    for j=1:m
        if i ~= j
        sum=M(i,j)+sum;
        end
    end
    if M(i,i)<sum
        sign=0;
        disp('M is not diagonally dominant')
        break
    end
end

if sign~=0
    disp('M is diagonally dominant')
end