%Is��Vh������
clear all;clc;
%B = 0.00683;
v1 = [0.54 1.06 1.60 2.13 2.66 3.20 3.72 4.25];
v2 = [0.52 1.06 1.59 2.12 2.66 3.20 3.73 4.25];
v3 = [0.44 0.87 1.30 1.72 2.16 2.59 3.02 3.45];
v4 = [0.43 0.86 1.29 1.72 2.16 2.59 3.02 3.45];
vh = (1/4)*(v1+v2+v3+v4);

Is = [0.4 0.8 1.2 1.6 2.0 2.4 2.8 3.2];
a = polyfit(Is,vh,1);
% 
% x = linspace(0.4,3.2,100);
% y = a(1)*x;
% 
% scatter(Is,vh);
% hold on;
% plot(x,y);
% legend('ʵ��','���');
% xlabel('I_{s}');
% ylabel('V_{H}');
% title('I_{s}-V_{H}����');
% text(2.5,1,'V_{H}=1.204*I_{s}');
