function newzhong=bianyi(zhong,by)
%±‰“Ï
[d,w]=size(zhong);
by=find(rand(1,w)<by);
n_zhong=[];
if ~isempty(by)
 for i=1:length(by)
 locate=floor(rand*w)+1;
 n_zhong(i,:)=zhong(by(i),:);
 if(zhong(by(i),locate)==0)
 n_zhong(i,locate)=1;
 else
 n_zhong(i,locate)=0;
 end
 end
end
if ~isempty(n_zhong)
 newzhong=n_zhong;
else
 newzhong=[];
end