%�������У�һ���������ڣ�һ�����
x = linspace(1,100);
y_sin = sin(x);

y_rand = rand(1,100);

ent_sin = approximateEntropy(y_sin,'dim',6);%���﷨ʹ��Ƕ��ά��
disp(ent_sin);

ent_rand = approximateEntropy(y_rand);
disp(ent_rand);





