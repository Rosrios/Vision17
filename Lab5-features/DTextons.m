addpath('C:\Users\vidan\Documents\MATLAB\VISION\lib')
%% Create a filter bank with deafult params
[fb] = fbCreate;
%% Load sample images from disk
imBase1=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T04_02.jpg')))/255;
imb1=imBase1*255;
imBase2=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T05_01.jpg')))/255;
imb1=imBase1*255;
% Set number of clusters
k = 16*10;

%% Apply filterbank to sample image
filterResponses=fbRun(fb,horzcat(imBase1,imBase2))
%Computer textons from filter
[map,textons] = computeTextons(filterResponses,k);
%% Load more images
imTest1=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T04_02.jpg')))/255;
imTest2=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T05_02.jpg')))/255;
imTest3=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T04_03.jpg')))/255;
imTest4=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T04_04.jpg')))/255;

%Calculate texton representation with current texton dictionary
tmapBase1 = assignTextons(fbRun(fb,imBase1),textons');
tmapBase2 = assignTextons(fbRun(fb,imBase2),textons');

tmapTest1 = assignTextons(fbRun(fb,imTest1),textons');
tmapTest2 = assignTextons(fbRun(fb,imTest2),textons');
tmapTest3 = assignTextons(fbRun(fb,imTest3),textons');
tmapTest4 = assignTextons(fbRun(fb,imTest4),textons');
%% Check the euclidean distances between the histograms and convince yourself that the images 
%of the goats are closer because they have similar texture pattern
%Can you tell why we need to create a histogram before measuring the distance?
% Base 1 con test1
D = norm(histc(tmapBase1(:),1:k)/numel(tmapBase1) - histc(tmapTest1(:),1:k)/numel(tmapTest1))
% Base 1 con test2
D = norm(histc(tmapBase1(:),1:k)/numel(tmapBase1) - histc(tmapTest2(:),1:k)/numel(tmapTest2))
% Base 2 con test1
D = norm(histc(tmapBase2(:),1:k)/numel(tmapBase2) - histc(tmapTest1(:),1:k)/numel(tmapTest1))
% Base 2 con test2
D = norm(histc(tmapBase2(:),1:k)/numel(tmapBase2)  - histc(tmapTest2(:),1:k)/numel(tmapTest2))
% Base 1 con test3 y 4
D = norm(histc(tmapBase2(:),1:k)/numel(tmapBase2)  - histc(tmapTest3(:),1:k)/numel(tmapTest3))
D = norm(histc(tmapBase2(:),1:k)/numel(tmapBase2)  - histc(tmapTest4(:),1:k)/numel(tmapTest4))
subplot(2,3,1)
hist(tmapBase1(:),1:k)
subplot(2,3,2)
hist(tmapBase2(:),1:k)
subplot(2,3,3)
hist(tmapTest1(:),1:k)
subplot(2,3,4)
hist(tmapTest2(:),1:k)
subplot(2,3,5)
hist(tmapTest3(:),1:k)
subplot(2,3,6)
hist(tmapTest4(:),1:k)


%% KNN vecinos cercanos
clc
vx=tmapBase1(:,1:2);
vy = [tmapTest1(1:3,1:2);tmapTest1(1:3,3:4);tmapTest1(1:3,5:6)];
[n,d]=knnsearch(vx,vy,'k',10,'distance','minkowski','p',5);
[ncb,dcb] = knnsearch(vx,vy,'k',10,...
   'distance','chebychev');
gscatter(vx(:,1),vx(:,2),species)
line(vy(:,1),vy(:,2),'marker','x','color','k',...
   'markersize',10,'linewidth',2,'linestyle','none')
line(vx(n,1),vx(n,2),'color',[.5 .5 .5],'marker','o',...
   'linestyle','none','markersize',10)
line(vx(ncb,1),vx(ncb,2),'color',[.5 .5 .5],'marker','p',...
   'linestyle','none','markersize',10)
legend('setosa','versicolor','virginica','query point',...
'minkowski','chebychev','Location','best')




