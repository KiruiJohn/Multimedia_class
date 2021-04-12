% Original image
img = imread('image.jpg');
figure(1)
colormap('gray')
imagesc(img)

% Crop - tree
tree_img = img(1:0.59*1200, 1:0.44*889, :);
figure(2)
colormap('gray')
imagesc(tree_img)

% Crop - tail
tail_img = img(0.35*1200:0.65*1200, 0.76*889:0.93*889, :);
figure(3)
colormap('gray')
imagesc(tail_img)

% Darken - tail
tail_img = tail_img - 100;
figure(4)
colormap('gray')
imagesc(tail_img)

% Flip image
flip_img = img;
for column=889:-1:1
    for row=1:1200
        flip_img(row, 889+1-column, :) = img(row, column, :);
    end
end
figure(5)
colormap('gray')
imagesc(flip_img)