function dataSet = dataSetFeatures_extract_function(imds)
for no_img=1:size(imds.Files(:))
    img = imread(char(imds.Files(no_img)));
     img=imresize(img,[60 60]);
     %text_feature(no_img,:) = text_features_LBP(img);
     %infectedarea(no_img,:) =infectedArea(img);
     shap_feature(no_img,:) = extractHOGFeatures(img,'CellSize',[16 16]);
    
    
 
end
% T=table(infectedarea,col_feature,text_feature,shap_feature);
T=table(shap_feature);
dataSet = table2array(T);