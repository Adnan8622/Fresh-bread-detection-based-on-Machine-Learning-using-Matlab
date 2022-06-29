function feature=featureExtationFtn(imds)
for no_img=1:size(imds.Files(:))
    img=imread(char(imds.Files(no_img)));
    img=imresize(img,[100,100]);
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
      arr34(no_img,:)=sum(arrbins);
end
feature=arr34;