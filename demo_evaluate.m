% clc;clear all;close all;
% addpath(genpath('.'));
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%----------------------------------------------------
% demo for precision recall and F-measure
% Author: Guangyu Zhong, Guangyuzhonghikari@gmail.com
%----------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i =1:1
pathname = {'MSRA'};
Gname = {'MSRA'};
inputname = {'MSRA'};
result_path = ['..\img\output\saliencymap\', pathname{i}, '\'];
truth_path =  ['..\img\G\', Gname{i}, '\' ];
input_path = ['..\img\input\',inputname{i}, '\'];

result_name = '*.png';%*.png
truth_name =  '*.png'; 
result = '_res.png';
truth = '.png';
[PreF,RecallF,FMeasureF] =  get_Fmeasure(input_path,result_path,truth_path,result,truth);
[Pre, Recall, fpr,AUC] = evaluate(result_path, result_name, truth_path, truth_name,result);

save(['..\mat\', pathname{i}, '.mat'],'PreF','RecallF','FMeasureF','Pre','Recall','fpr','AUC');

%%
figure(1);set(gcf,'color','white'); xlabel('Recall'); ylabel('Precision');hold on;
grid on;axis equal;set(gca,'XTick',0:0.05:1);set(gca,'YTick',0:0.05:1.05);
plot(Recall,Pre,'r--');hold on;
end