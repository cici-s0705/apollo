zhong_size=50; %��Ⱥ����
d=10; %��������
zhang_length=10; %Ⱦɫ�峤��
jx=0.8; %�������
by=0.001; %�������
zhong=initzhong(zhong_size,zhang_length); %������ɳ�ʼȾɫ��
for i=1:d
 b=bianyi(zhong,by); %����
 if ~isempty(b)
 newzhong=[zhong;crosspop(zhong,jx);b]; %���ɵ�����Ⱥ
 else
 newzhong=[zhong;crosspop(zhong,jx)];
 end
 [newobject,v]=best(newzhong,time); %����Ӧֵ
 [object,sod]=sort(newobject); 
 zhong=newzhong(1:50,:); %ѡ����һ����Ⱥ
end
disp('�ȶ���ϵ����');
vpa(v,6)