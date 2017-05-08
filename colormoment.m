function colormoment = colormoment(rgbImage)
%rgbImage = imread(image);
[rows columns numberOfColorBands] = size(rgbImage);
col1 = 1;
col2 = floor(columns/3);
col3 = col2 + 1;
col4 = col2*2;
col5 = col4 + 1;
row1 = 1;
row2 = floor(rows/3);
row3 = row2 + 1;
row4 = row2 * 2;
row5 = row4 + 1;
% Now crop
ima1 = imcrop(rgbImage, [col1 row1 col2 row2]);
ima2 = imcrop(rgbImage, [col3 row1 col2 row2]);
ima3 = imcrop(rgbImage, [col5 row1 col2 row2]);
ima4 = imcrop(rgbImage, [col1 row3 col2 row2]);
ima5 = imcrop(rgbImage, [col3 row3 col2 row2]);
ima6 = imcrop(rgbImage, [col5 row3 col2 row2]);
ima7 = imcrop(rgbImage, [col1 row5 col2 row2]);
ima8 = imcrop(rgbImage, [col3 row5 col2 row2]);
ima9 = imcrop(rgbImage, [col5 row5 col2 row2]);
% Display the images.
CM1 = colorMoments(ima1);
CM2 = colorMoments(ima2);
CM3 = colorMoments(ima3);
CM4 = colorMoments(ima4);
CM5 = colorMoments(ima5);
CM6 = colorMoments(ima6);
CM7 = colorMoments(ima7);
CM8 = colorMoments(ima8);
CM9 = colorMoments(ima9);
ciri = [CM1 CM2 CM3 CM4 CM5 CM6 CM7 CM8 CM9];
colormoment = ciri;
% subplot(3, 3, 1);
% imshow(ima1);
% subplot(3, 3, 2);
% imshow(ima2);
% subplot(3, 3, 3);
% imshow(ima3);
% subplot(3, 3, 4);
% imshow(ima4);
% subplot(3, 3, 5);
% imshow(ima5);
% subplot(3, 3, 6);
% imshow(ima6);
% subplot(3, 3, 7);
% imshow(ima8);
% subplot(3, 3, 8);
% imshow(ima8);
% subplot(3, 3, 9);
% imshow(ima9);
end