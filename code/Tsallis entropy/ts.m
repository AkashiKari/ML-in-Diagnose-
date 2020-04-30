function TE=ts(DataName,N,q)                                         
%�������漰����������
%DataName--������Tsallis��ֵ���ź�����
%N--����Tsallis��ֵʱ��ȡ�õļ����
%q--����Tsallis��ֵʱ��ϵ��
%q>1ʱ�����ʴ���������ڼ�����ռ��������
%q<1ʱ������С���������ڼ�����ռ��������

x=detrend(DataName);                       %�ź�����ȥ���ƴ��� 
sigma=std(x);                           %���źű�׼��
segment=zeros(1,N+1);
for i=-25:25
    segment(i+26)=i*3*sigma/25;      %��������׼��Ϊ�������仮��50�ȷ�
end
n=hist(x,segment);                     %�����ֵ�������ֱ��ͼͳ��
s=sum(n);                                %ͳ�Ƹ�����������
p=n/s;                                    %�����������ܶ�
bar(segment,p);                         %�������ܶȷֲ�ͼ

TE=0;                                     %��Tsallis��
for i=1:(N+1)
    TE=p(i)^q+TE;
end
TE=(TE-1)/(1-q);
 
