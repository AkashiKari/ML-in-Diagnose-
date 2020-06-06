
%%
%aal存储了116个区域
%aal{1,1}则是第一个aal区域中 所有点的坐标
load('aal.mat');
region1 = aal{1,1};

intind = find(region1~=0);%intind数组里存储数值不为0的顺序索引
sz = size(region1);
[r,c,p] = ind2sub(sz,intind);%将要用的顺序索引值转换为下标索引
%r,c,p数组中存储了第一个区域中所有点的下标索引
%从len(r)中可见第一个区域包含1028个点

% %check
% for i = 1:length(intind)%检查转化是否正确
%     logi = testregion(r(i),c(i),p(i)) == testregion(intind(i));
%     disp(logi);
% end
%%
%使用nmload导入nm数据

ts = sub1(r(1),c(1),p(1),:);
ts = reshape(ts,[1,240]);

%作图
% plot(ts);

%%
%测试appen
appen = approximateEntropy(ts,'dim',5);
disp(['appen=',num2str(appen)]);
%%
%测试sampen
r_ts = std(ts);
m = 5;
tau = 1;%tau取1则为sampen，否则为multisampen
% sapen = sampen(ts,m,r_ts,'chebychev');
% disp(['sampen=',num2str(sapen)]);
mulsampen = multiscaleSampleEntropy(ts,m,r_ts,tau);
disp(['multisampen=',num2str(mulsampen)]);
%%
%测试permen
permen = MPerm(ts,3,1,1);
disp(['peren=',num2str(permen)]);
%%
%测试fuzzen
fuzzen = fuzzyEntropy(ts,m,r_ts,tau);
disp(['fuzzen=',num2str(fuzzen)]);

%%