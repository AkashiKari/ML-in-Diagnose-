nmpath = '/Users/niuboheng/Downloads/xc_data/nm/';

% for k = 1:26
%     subpath = [nmpath,'sub',num2str(k),'.mat'];
%     temp = load(subpath);
%     matname = char(fieldnames(temp));
%     nm{k} = getfield(temp,matname);%存储为cell
% end

%只导入一个病例
sub1 = load([nmpath,'sub1.mat']);
sub1 = cell2mat(struct2cell(sub1));

% save('nm.mat','nm');