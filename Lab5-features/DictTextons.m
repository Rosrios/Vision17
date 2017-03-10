addpath('C:\Users\vidan\Documents\MATLAB\VISION\lib')
%% Create a filter bank with deafult params
[fb] = fbCreate;
%% Load sample images from disk
imBase11=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T01_01.jpg')))/255;
imBase21=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T02_01.jpg')))/255;
imBase31=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T03_01.jpg')))/255;
imBase41=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T04_01.jpg')))/255;
imBase51=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T05_01.jpg')))/255;
imBase61=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T06_01.jpg')))/255;
imBase71=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T07_01.jpg')))/255;
imBase81=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T08_01.jpg')))/255;
imBase91=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T09_01.jpg')))/255;
imBase101=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T010_01.jpg')))/255;
imBase111=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T011_01.jpg')))/255;
imBase121=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T012_01.jpg')))/255;
imBase131=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T013_01.jpg')))/255;
imBase141=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T014_01.jpg')))/255;
imBase151=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T015_01.jpg')))/255;
imBase161=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T016_01.jpg')))/255;
imBase171=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T017_01.jpg')))/255;
imBase181=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T018_01.jpg')))/255;
imBase191=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T019_01.jpg')))/255;
imBase201=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T020_01.jpg')))/255;
imBase211=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T021_01.jpg')))/255;
imBase221=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T022_01.jpg')))/255;
imBase231=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T023_01.jpg')))/255;
imBase241=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T024_01.jpg')))/255;
imBase251=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T025_01.jpg')))/255;
%% base de datos con la foto 02
% % % imBase11=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T01_02.jpg')))/255;
% % % imBase21=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T02_02.jpg')))/255;
% % % imBase31=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T03_02.jpg')))/255;
% % % imBase41=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T04_02.jpg')))/255;
% % % imBase51=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T05_02.jpg')))/255;
% % % imBase61=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T06_02.jpg')))/255;
% % % imBase71=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T07_02.jpg')))/255;
% % % imBase81=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T08_02.jpg')))/255;
% % % imBase91=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T09_02.jpg')))/255;
% % % imBase101=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T010_02.jpg')))/255;
% % % imBase111=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T011_02.jpg')))/255;
% % % imBase121=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T012_02.jpg')))/255;
% % % imBase131=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T013_02.jpg')))/255;
% % % imBase141=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T014_02.jpg')))/255;
% % % imBase151=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T015_02.jpg')))/255;
% % % imBase161=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T016_02.jpg')))/255;
% % % imBase171=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T017_02.jpg')))/255;
% % % imBase181=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T018_02.jpg')))/255;
% % % imBase191=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T019_02.jpg')))/255;
% % % imBase201=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T020_02.jpg')))/255;
% % % imBase211=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T021_02.jpg')))/255;
% % % imBase221=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T022_02.jpg')))/255;
% % % imBase231=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T023_02.jpg')))/255;
% % % imBase241=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T024_02.jpg')))/255;
% % % imBase251=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T025_02.jpg')))/255;


%% Set number of clusters
k = 16*5;

%% Apply filterbank to sample image
clc
filterResponses=fbRun(fb,horzcat(imBase11,imBase21,imBase31,imBase41,imBase51,imBase61,imBase71,imBase81,imBase91,imBase101,imBase111,imBase121,imBase131,imBase141,imBase151,imBase161,imBase171,imBase181,imBase191,imBase201,imBase211,imBase221,imBase231,imBase241,imBase251))
%% Computer textons from filter
clc
[map,textons] = computeTextons(filterResponses,k);
%% Load more images/ testing images
clc
imTest11=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T01_03.jpg')))/255;
imTest12=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T01_04.jpg')))/255;
imTest21=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T02_03.jpg')))/255;
imTest22=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T02_04.jpg')))/255;
imTest31=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T03_03.jpg')))/255;
imTest32=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T03_04.jpg')))/255;
imTest41=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T04_03.jpg')))/255;
imTest42=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T04_04.jpg')))/255;
imTest51=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T05_03.jpg')))/255;
imTest52=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T05_04.jpg')))/255;
imTest61=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T06_03.jpg')))/255;
imTest62=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T06_04.jpg')))/255;
imTest71=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T07_03.jpg')))/255;
imTest72=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T07_04.jpg')))/255;
imTest81=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T08_03.jpg')))/255;
imTest82=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T08_04.jpg')))/255;
imTest91=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T09_03.jpg')))/255;
imTest92=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T09_04.jpg')))/255;
imTest101=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T010_03.jpg')))/255;
imTest102=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T010_04.jpg')))/255;
imTest111=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T011_03.jpg')))/255;
imTest112=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T011_04.jpg')))/255;
imTest121=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T012_03.jpg')))/255;
imTest122=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T012_04.jpg')))/255;
imTest131=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T013_03.jpg')))/255;
imTest132=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T013_04.jpg')))/255;
imTest141=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T014_03.jpg')))/255;
imTest142=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T014_04.jpg')))/255;
imTest151=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T015_03.jpg')))/255;
imTest152=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T015_04.jpg')))/255;
imTest161=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T016_03.jpg')))/255;
imTest162=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T016_04.jpg')))/255;
imTest171=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T017_03.jpg')))/255;
imTest172=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T017_04.jpg')))/255;
imTest181=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T018_03.jpg')))/255;
imTest182=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T018_04.jpg')))/255;
imTest191=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T019_03.jpg')))/255;
imTest192=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T019_04.jpg')))/255;
imTest201=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T020_03.jpg')))/255;
imTest202=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T020_04.jpg')))/255;
imTest211=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T021_03.jpg')))/255;
imTest212=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T021_04.jpg')))/255;
imTest221=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T022_03.jpg')))/255;
imTest222=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T022_04.jpg')))/255;
imTest231=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T023_03.jpg')))/255;
imTest232=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T023_04.jpg')))/255;
imTest241=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T024_03.jpg')))/255;
imTest242=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T024_04.jpg')))/255;
imTest251=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T025_03.jpg')))/255;
imTest252=double(rgb2gray(imread('C:\Users\vidan\Documents\MATLAB\VISION\lib\newtest\T025_04.jpg')))/255;

%% Calculate texton representation with current texton dictionary
clc
tmapBase11 = assignTextons(fbRun(fb,imBase11),textons');
tmapBase21 = assignTextons(fbRun(fb,imBase21),textons');
tmapBase31 = assignTextons(fbRun(fb,imBase31),textons');
tmapBase41 = assignTextons(fbRun(fb,imBase41),textons');
tmapBase51 = assignTextons(fbRun(fb,imBase51),textons');
tmapBase61 = assignTextons(fbRun(fb,imBase61),textons');
tmapBase71 = assignTextons(fbRun(fb,imBase71),textons');
tmapBase81 = assignTextons(fbRun(fb,imBase81),textons');
tmapBase91 = assignTextons(fbRun(fb,imBase91),textons');
tmapBase101 = assignTextons(fbRun(fb,imBase101),textons');
tmapBase111 = assignTextons(fbRun(fb,imBase111),textons');
tmapBase121 = assignTextons(fbRun(fb,imBase121),textons');
tmapBase131 = assignTextons(fbRun(fb,imBase131),textons');
tmapBase141 = assignTextons(fbRun(fb,imBase141),textons');
tmapBase151 = assignTextons(fbRun(fb,imBase151),textons');
tmapBase161 = assignTextons(fbRun(fb,imBase161),textons');
tmapBase171 = assignTextons(fbRun(fb,imBase171),textons');
tmapBase181 = assignTextons(fbRun(fb,imBase181),textons');
tmapBase191 = assignTextons(fbRun(fb,imBase191),textons');
tmapBase201 = assignTextons(fbRun(fb,imBase201),textons');
tmapBase211 = assignTextons(fbRun(fb,imBase211),textons');
tmapBase221 = assignTextons(fbRun(fb,imBase221),textons');
tmapBase231 = assignTextons(fbRun(fb,imBase231),textons');
tmapBase241 = assignTextons(fbRun(fb,imBase241),textons');
tmapBase251 = assignTextons(fbRun(fb,imBase251),textons');
%% test
clc
tmapTest11 = assignTextons(fbRun(fb,imTest11),textons');
tmapTest21 = assignTextons(fbRun(fb,imTest21),textons');
tmapTest31 = assignTextons(fbRun(fb,imTest31),textons');
tmapTest41 = assignTextons(fbRun(fb,imTest41),textons');
tmapTest51 = assignTextons(fbRun(fb,imTest51),textons');
tmapTest61 = assignTextons(fbRun(fb,imTest61),textons');
tmapTest71 = assignTextons(fbRun(fb,imTest71),textons');
tmapTest81 = assignTextons(fbRun(fb,imTest81),textons');
tmapTest91 = assignTextons(fbRun(fb,imTest91),textons');
tmapTest101 = assignTextons(fbRun(fb,imTest101),textons');
tmapTest111 = assignTextons(fbRun(fb,imTest111),textons');
tmapTest121 = assignTextons(fbRun(fb,imTest121),textons');
tmapTest131 = assignTextons(fbRun(fb,imTest131),textons');
tmapTest141 = assignTextons(fbRun(fb,imTest141),textons');
tmapTest151 = assignTextons(fbRun(fb,imTest151),textons');
tmapTest161 = assignTextons(fbRun(fb,imTest161),textons');
tmapTest171 = assignTextons(fbRun(fb,imTest171),textons');
tmapTest181 = assignTextons(fbRun(fb,imTest181),textons');
tmapTest191 = assignTextons(fbRun(fb,imTest191),textons');
tmapTest201 = assignTextons(fbRun(fb,imTest201),textons');
tmapTest211 = assignTextons(fbRun(fb,imTest211),textons');
tmapTest221 = assignTextons(fbRun(fb,imTest221),textons');
tmapTest231 = assignTextons(fbRun(fb,imTest231),textons');
tmapTest241 = assignTextons(fbRun(fb,imTest241),textons');
tmapTest251 = assignTextons(fbRun(fb,imTest251),textons');

%% Check the euclidean distances between the histograms and convince yourself that the images 
%of the goats are closer because they have similar texture pattern
%Can you tell why we need to create a histogram before measuring the distance?
% Base 1 with all test images 
clc
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase11(:),1:k)/numel(tmapBase11) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 2 with all testing images
clc
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase21(:),1:k)/numel(tmapBase21) - histc(tmapTest251(:),1:k)/numel(tmapTest251))
%% base 3 with all images
clc
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase31(:),1:k)/numel(tmapBase31) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% Base 4 with all images
clc
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase41(:),1:k)/numel(tmapBase41) - histc(tmapTest251(:),1:k)/numel(tmapTest251))
%% base 5 with all images
clc
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase51(:),1:k)/numel(tmapBase51) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 6 
clc
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase61(:),1:k)/numel(tmapBase61) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 7
clc
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase71(:),1:k)/numel(tmapBase71) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 8 
clc
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase81(:),1:k)/numel(tmapBase81) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 9
clc
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase91(:),1:k)/numel(tmapBase91) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 10
clc
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase101(:),1:k)/numel(tmapBase101) - histc(tmapTest251(:),1:k)/numel(tmapTest251))


%% base 11

clc
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase111(:),1:k)/numel(tmapBase111) - histc(tmapTest251(:),1:k)/numel(tmapTest251))



%% base 12

clc
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase121(:),1:k)/numel(tmapBase121) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 13
clc
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase131(:),1:k)/numel(tmapBase131) - histc(tmapTest251(:),1:k)/numel(tmapTest251))


%% base 14
clc
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase141(:),1:k)/numel(tmapBase141) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 15
clc
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase151(:),1:k)/numel(tmapBase151) - histc(tmapTest251(:),1:k)/numel(tmapTest251))


%% base 16
clc
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase161(:),1:k)/numel(tmapBase161) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 17
clc
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase171(:),1:k)/numel(tmapBase171) - histc(tmapTest251(:),1:k)/numel(tmapTest251))



%% base 18
clc
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase181(:),1:k)/numel(tmapBase181) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 19
clc
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase191(:),1:k)/numel(tmapBase191) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 20
clc
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase201(:),1:k)/numel(tmapBase201) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 21
clc
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase211(:),1:k)/numel(tmapBase211) - histc(tmapTest251(:),1:k)/numel(tmapTest251))



%% base 22
clc
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase221(:),1:k)/numel(tmapBase221) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 23
clc

D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase231(:),1:k)/numel(tmapBase231) - histc(tmapTest251(:),1:k)/numel(tmapTest251))

%% base 24
clc

D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase241(:),1:k)/numel(tmapBase241) - histc(tmapTest251(:),1:k)/numel(tmapTest251))



%% base 25
clc

D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest11(:),1:k)/numel(tmapTest11))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest21(:),1:k)/numel(tmapTest21))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest31(:),1:k)/numel(tmapTest31))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest41(:),1:k)/numel(tmapTest41))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest51(:),1:k)/numel(tmapTest51))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest61(:),1:k)/numel(tmapTest61))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest71(:),1:k)/numel(tmapTest71))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest81(:),1:k)/numel(tmapTest81))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest91(:),1:k)/numel(tmapTest91))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest101(:),1:k)/numel(tmapTest101))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest111(:),1:k)/numel(tmapTest111))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest121(:),1:k)/numel(tmapTest121))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest131(:),1:k)/numel(tmapTest131))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest141(:),1:k)/numel(tmapTest141))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest151(:),1:k)/numel(tmapTest151))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest161(:),1:k)/numel(tmapTest161))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest171(:),1:k)/numel(tmapTest171))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest181(:),1:k)/numel(tmapTest181))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest191(:),1:k)/numel(tmapTest191))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest201(:),1:k)/numel(tmapTest201))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest211(:),1:k)/numel(tmapTest211))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest221(:),1:k)/numel(tmapTest221))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest231(:),1:k)/numel(tmapTest231))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest241(:),1:k)/numel(tmapTest241))
D = norm(histc(tmapBase251(:),1:k)/numel(tmapBase251) - histc(tmapTest251(:),1:k)/numel(tmapTest251))


%% Base 1 con test2
D = norm(histc(tmapBase1(:),1:k)/numel(tmapBase1) - histc(tmapTest2(:),1:k)/numel(tmapTest2))
% Base 2 con test1
D = norm(histc(tmapBase2(:),1:k)/numel(tmapBase2) - histc(tmapTest1(:),1:k)/numel(tmapTest1))
% Base 2 con test2
D = norm(histc(tmapBase2(:),1:k)/numel(tmapBase2)  - histc(tmapTest2(:),1:k)/numel(tmapTest2))
% Base 1 con test3 y 4
D = norm(histc(tmapBase2(:),1:k)/numel(tmapBase2)  - histc(tmapTest3(:),1:k)/numel(tmapTest3))
D = norm(histc(tmapBase2(:),1:k)/numel(tmapBase2)  - histc(tmapTest4(:),1:k)/numel(tmapTest4))
%% 
% % % subplot(2,3,1)
% % % hist(tmapBase1(:),1:k)
% % % subplot(2,3,2)
% % % hist(tmapBase2(:),1:k)
% % % subplot(2,3,3)
% % % hist(tmapTest1(:),1:k)
% % % subplot(2,3,4)
% % % hist(tmapTest2(:),1:k)
% % % subplot(2,3,5)
% % % hist(tmapTest3(:),1:k)
% % % subplot(2,3,6)
% % % hist(tmapTest4(:),1:k)


%% KNN classifier
clc
Mdl.NumNeighbors = 4;
Xknn = 
Yknn = 
Mdl = fitcknn(X,Y)




