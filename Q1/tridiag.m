%׷�Ϸ� tridiag.m
function s =tridiag(a,b,c,d)
%׷�Ϸ���ⷽ��
n=length(d);
c(1)=c(1)/b(1);
for j=2:n-1
 c(j)=c(j)/(b(j)-a(j-1)*c(j-1));
end
d(1)=d(1)/b(1);
for j=2:n
 d(j)=(d(j)-a(j-1)*d(j-1))/(b(j)-a(j-1)*c(j-1));
end
s(n)=d(n);
s(n-1)=s(n);
for j=n-2:-1:1
 s(j)=d(j)-c(j)*s(j+1);
end 
end