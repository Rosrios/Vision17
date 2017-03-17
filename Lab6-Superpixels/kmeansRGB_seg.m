%% Input Images
clear all, close all, clc
ima=imread('p1.jpg');
hsv_ima=rgb2hsv(ima);
figure(1)
subplot(2,4,1)
imshow(ima), title('Original Image');
%% Lab transformation
% cform = makecform('srgb2lab');
% lab_ima = applycform(ima,cform);
% subplot(2,4,2)
% imshow(lab_ima), title('Lab Image');
ab = double(hsv_ima(:,:,2:3));
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,2);

%% K-means
nColors = 5;
% repeat the clustering 3 times to avoid local minima
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
                                      'Replicates',3);
pixel_labels = reshape(cluster_idx,nrows,ncols);
subplot(2,4,2)
imshow(pixel_labels,[]), title('Image labeled by cluster index');

%% Object Separation
segmented_images = cell(1,6);
rgb_label = repmat(pixel_labels,[1 1 3]);

for k = 1:nColors
    color = ima;
    color(rgb_label ~= k) = 0;
    segmented_images{k} = color;
end
subplot(2,4,3)
imshow(segmented_images{1}), title('Objects in cluster 1');
subplot(2,4,4)
imshow(segmented_images{2}), title('Objects in cluster 2');
subplot(2,4,5)
imshow(segmented_images{3}), title('Objects in cluster 3');
subplot(2,4,6)
imshow(segmented_images{4}), title('Objects in cluster 4');
subplot(2,4,7)
imshow(segmented_images{5}), title('Objects in cluster 5');
subplot(2,4,8)
imshow(segmented_images{6}), title('Objects in cluster 6');
%%
figure
image(pixel_labels)
colormap colorcube
title('K Means segmentation with RGB');