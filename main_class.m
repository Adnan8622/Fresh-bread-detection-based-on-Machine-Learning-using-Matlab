clear all;
close all;
clc;
setDir=fullfile('dataset');
imds = imageDatastore(setDir,'IncludeSubfolders',true,'LabelSource','foldernames');
[trainSet,testSet]=splitEachLabel(imds,0.8,'randomize');
TrainLabel=grp2idx(trainSet.Labels);
TestLabel=grp2idx(testSet.Labels);
TrainFeauter=dataSetFeatures_extract_function(trainSet);%featureExtrationFtn(trainSet);
TestFeauter=dataSetFeatures_extract_function(testSet);%featureExtrationFtn(testSet);

model1=fitcecoc(TrainFeauter,TrainLabel);
 load 'accuracy.mat'
 test_accuracy
% % test_accuracy = sum(predict(model1,TestFeauter)==TestLabel)/length(TestLabel)*100