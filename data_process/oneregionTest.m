
%%
%aal�洢��116������
%aal{1,1}���ǵ�һ��aal������ ���е������
load('aal.mat');
region1 = aal{1,1};

intind = find(region1~=0);%intind������洢��ֵ��Ϊ0��˳������
sz = size(region1);
[r,c,p] = ind2sub(sz,intind);%��Ҫ�õ�˳������ֵת��Ϊ�±�����
%r,c,p�����д洢�˵�һ�����������е���±�����
%��len(r)�пɼ���һ���������1028����

% %check
% for i = 1:length(intind)%���ת���Ƿ���ȷ
%     logi = testregion(r(i),c(i),p(i)) == testregion(intind(i));
%     disp(logi);
% end
%%
%ʹ��nmload����nm����

ts = sub1(r(1),c(1),p(1),:);
ts = reshape(ts,[1,240]);

%��ͼ
% plot(ts);

%%
%����appen
appen = approximateEntropy(ts,'dim',5);
disp(['appen=',num2str(appen)]);
%%
%����sampen
r_ts = std(ts);
m = 5;
tau = 1;%tauȡ1��Ϊsampen������Ϊmultisampen
% sapen = sampen(ts,m,r_ts,'chebychev');
% disp(['sampen=',num2str(sapen)]);
mulsampen = multiscaleSampleEntropy(ts,m,r_ts,tau);
disp(['multisampen=',num2str(mulsampen)]);
%%
%����permen
permen = MPerm(ts,3,1,1);
disp(['peren=',num2str(permen)]);
%%
%����fuzzen
fuzzen = fuzzyEntropy(ts,m,r_ts,tau);
disp(['fuzzen=',num2str(fuzzen)]);

%%