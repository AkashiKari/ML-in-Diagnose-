%aal�洢��116������
%aal{1,1}���ǵ�һ��aal�����е� �������
testregion = aal{1,1};

intind = find(testregion~=0);%intind������洢��ֵ��Ϊ0��˳������
sz = size(testregion);
[r,c,p] = ind2sub(sz,intind);%��Ҫ�õ�˳������ֵת��Ϊ�±�����
%r,c,p�����д洢�˵�һ�������е��±�����
%��len(r)�пɼ���һ���������1028����


% %check
% for i = 1:length(intind)%���ת���Ƿ���ȷ
%     logi = testregion(r(i),c(i),p(i)) == testregion(intind(i));
%     disp(logi);
% end