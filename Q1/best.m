function [object,mn]=best(newzhong,time)
%��Ӧ�Ժ���
lana=118; 
[d,w]=size(newzhong);
T0=75;
T1=37;
rho=8303.97;
c=460;
K=0.626;
a=K./(c.*rho)*10^8;
gg=binary2decimal(newzhong);
s=zeros(d,1);
 %%
 %���õ�����߽�������þ���
for all=1:d
 u=zeros(M+1,N+1);
 lanb=gg(all);
 first=[0,first,-2*r(4)];
 third=[-2*r(1),third,0];
 
seconf=[1+2*r(1)-2*r(1)*h*lana/(-K(1)),seconf,1+2*r(4)+2*r(4)*h*lanb/(-K(4))];
 u(1:H(1),1)=37; %��ֵ
 u(1+H(1):H(1)+H(2),1)=37;
 u(H(1)+H(2)+1:H(1)+H(2)+H(3),1)=37;
 u(H(1)+H(2)+H(3)+1:H(1)+H(2)+H(3)+H(4),1)=37;
 for j=1:N+1 %��ֵ
     u(1,j)=T0;
 u(M+1,j)=T1;
 end
 %% ��ˮ������֮�俼���ȴ���
 %%
 for j=2:N+1 %����ַ�����ֵ��
 last=[u(2,j-1)+r(1)*u(1,j);u(3:M-1,j-1);
 u(M,j-1)+r(4)*u(M+1,j)];
 last(H(1))=0;
 last(H(1)+H(2))=0;
 last(H(1)+H(2)+H(3))=0;
 
last=[u(1,j-1)-T0*2*r(1)*h*lana/(-K(1));last;u(M+1,j-1)+2*r(4)*h*T1*lanb/(-K(4))];
 A=tridiag(first,seconf,third,last); %׷�Ϸ����
 u(1:M+1,j)=A;
 end
 v=u(H(1)+H(2)+H(3)+H(4),:);
 for m=1:5401
 s(all)=s(all)+(v(m)-time(m))^2; %���ƽ����
 end
 s(all)=s(all)/length(v);
end
object=s; %��Ӧ��ֵ
mn=lana;