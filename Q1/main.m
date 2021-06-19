zhong_size=50; %种群数量
d=10; %进化代数
zhang_length=10; %染色体长度
jx=0.8; %交叉概率
by=0.001; %变异概率
zhong=initzhong(zhong_size,zhang_length); %随机生成初始染色体
for i=1:d
 b=bianyi(zhong,by); %变异
 if ~isempty(b)
 newzhong=[zhong;crosspop(zhong,jx);b]; %生成的新种群
 else
 newzhong=[zhong;crosspop(zhong,jx)];
 end
 [newobject,v]=best(newzhong,time); %求适应值
 [object,sod]=sort(newobject); 
 zhong=newzhong(1:50,:); %选出下一代种群
end
disp('热对流系数：');
vpa(v,6)