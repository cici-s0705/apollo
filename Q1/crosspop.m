function newpop=crosspop(pop,pc)
%½»²æ
[d,w]=size(pop);
m=randperm(d);
n_pop=zeros(d,w);
for i=1:2:d
 if rand<pc
 locate=floor(rand*w)+1;
 n_pop(i,:)=[pop(m(i),1:locate),pop(m(i+1),locate+1:w)];
 n_pop(i+1,:)=[pop(m(i+1),1:locate),pop(m(i),locate+1:w)];
 end
end
newpop=n_pop;
