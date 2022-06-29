clc,clear,close all
 scrFile=dir('C:\Users\Microsoft\Documents\MATLAB\test2\bread\*.jpg');
 arrlabel(1:55,:)=1;
 arrlabel(56:99,:)=2;
for ii=1:length(scrFile)
     filename=strcat('C:\Users\Microsoft\Documents\MATLAB\test2\bread\',scrFile(ii).name);
    img=imread(filename);
    img=imresize(img,[200,200]);
    imshow(img);
 [r c d]=size(img);

 red=img(:,:,1);
 green=img(:,:,2);
 blue=img(:,:,3);

 count=[0:255];
 cc=0;

 for dens=1:3
   for k=1:256
      cc=0;
     for i=1:r
        for j=1:c
           if count(1,k)==img(i,j,dens)
               cc=cc+1;
            end
       end
        
     end
   arrbins(dens,k)=[cc];
   end
  
 end
  arr34(ii,:)=sum(arrbins);
end

train_model=fitcecoc(arr34,arrlabel);

