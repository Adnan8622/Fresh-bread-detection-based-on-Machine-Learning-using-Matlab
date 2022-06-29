function dataSet = dataSetFeatures_extract_function(imds)
for no_img=1:size(imds.Files(:))
    img = imread(char(imds.Files(no_img)));
    %imshow(img)
    b=img(:,:,3); 
     img=imresize(img,[100 100]);
     col_feature(no_img,:)= color_features_CCH(img);
     text_feature(no_img,:) = text_features_LBP(img);
     shap_feature(no_img,:) = extractHOGFeatures(img,'CellSize',[16 16]);
     %img=b>35;
%      infectedarea(no_img,1) =infectedArea(img);
end
 T=table(col_feature,text_feature,shap_feature);
%T=table(text_feature,shap_feature);
dataSet = table2array(T);