% clear all;
% clc;
% img=imread('img/Uninfected/C2NThinF_IMG_20150604_114751_cell_92.png');
function no=infectedArea(img)
img_br=rgb2gray(img);
[r c]=size(img_br);
imgout=zeros(r,c);
for i=1:r
    for j=1:c
        if img_br(i,j)<137 && img_br(i,j)>0
            imgout(i,j)=img_br(i,j);
        end
    end
end

imgout1=imgout>20;
Kaverage = filter2(fspecial('average',8),imgout1)/2;
Kaverage=Kaverage>.240;
imgout1=imfill(Kaverage,'holes');
[l,no]=bwlabel(imgout1);
if no>0
    no=1;
end
% subplot(2,1,1)
% imshow(img_br)
% title(' br')
% subplot(2,1,2)
% imshow(l)
% title(' ot')

%shap_feature = extractHOGFeatures(img_n,'CellSize',[16 16])