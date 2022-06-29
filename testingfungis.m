clc,clear,close all


  [filename pathname]=uigetfile('*.jpg','Select An Image');
   abss=strcat(pathname,filename);
   img=imread(abss);
    b=img(:,:,3);
    
     img=imresize(img,[100 100]);
     col_feature= color_features_CCH(img);
     text_feature= text_features_LBP(img);
     shap_feature = extractHOGFeatures(img,'CellSize',[16 16]);
     infectedarea =infectedArea(img);
     
 T=table(infectedarea,col_feature,text_feature,shap_feature);
 feature = table2array(T);
 load train_model.mat
 featurest=predict(model1,feature);
 
    if featurest==1
        figure,subplot(1,2,1),imshow(img),title('Fungus bread');
        disp('No');
%          [y,Fs] = audioread('yes_normal.mp3');
%          sound(y,Fs);

    else 
        figure,subplot(1,2,2),imshow(img),title('normal bread');
%          [y,Fs] = audioread('not_normal.mp3');
%          sound(y,Fs);
        disp('Yes');

    end
 


