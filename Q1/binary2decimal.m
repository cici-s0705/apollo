function pop2 = binary2decimal(pop)
%��������ת��Ϊ��ֵ
[px,py]=size(pop);
for i = 1:py
 pop1(:,i) = 2.^(py-i).*pop(:,i);
end
%sum(.,2)������ͣ��õ�������
temp = sum(pop1,2);
pop2 = 0.02400+0.00300*temp/(2^10-1);