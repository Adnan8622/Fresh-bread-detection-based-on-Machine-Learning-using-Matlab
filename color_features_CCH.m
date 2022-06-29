function feature_vec=color_features_CCH(img);
%img=imread('img/Parasitized/C33P1thinF_IMG_20150619_114756a_cell_179.png')
%  clear;
%  clc;
% img=imread('Fig6.38(a).jpg');

[m n d]=size(img);

r=img(:,:,1);
g=img(:,:,2);
b=img(:,:,3);

feature_vec=zeros(1,27);
%% For Red Color
for i=1:m
    for j=1:n
        if (r(i,j)>0 && r(i,j)<=85)
            r(i,j)=0;
        
        elseif (r(i,j)>85 && r(i,j)<=170)
            r(i,j)=1;
        elseif (r(i,j)>170 && r(i,j)<=255)
            r(i,j)=2;

        end
    end
end
%% For Green Color
for i=1:m
    for j=1:n
        if (g(i,j)>0 && g(i,j)<=85)
            g(i,j)=0;
        
        elseif (g(i,j)>85 && g(i,j)<=170)
            g(i,j)=1;
        elseif (g(i,j)>170 && g(i,j)<=255)
            g(i,j)=2;

        end
    end
end
%% For Blue Color
for i=1:m
    for j=1:n
        if (b(i,j)>0 && b(i,j)<=85)
            b(i,j)=0;
        
        elseif (b(i,j)>85 && b(i,j)<=170)
            b(i,j)=1;
        elseif (b(i,j)>170 && b(i,j)<=255)
            b(i,j)=2;
        end
    end
end
    for i=1:m
        for j=1:n
            if[r(i,j),g(i,j),b(i,j)]==[0,0,0];
             feature_vec(1)=feature_vec(1)+1;
             
             elseif[r(i,j),g(i,j),b(i,j)]==[0,0,1];
              feature_vec(2)=feature_vec(2)+1;
             elseif[r(i,j),g(i,j),b(i,j)]==[0,0,2];
              feature_vec(3)=feature_vec(3)+1;
             elseif[r(i,j),g(i,j),b(i,j)]==[0,1,0];
              feature_vec(4)=feature_vec(4)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[0,1,1];
              feature_vec(5)=feature_vec(5)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[0,1,2];
              feature_vec(6)=feature_vec(6)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[0,2,0];
              feature_vec(7)=feature_vec(7)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[0,2,1];
              feature_vec(8)=feature_vec(8)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[0,2,2];
              feature_vec(9)=feature_vec(9)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[1,0,0];
              feature_vec(10)=feature_vec(10)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[1,0,1];
              feature_vec(11)=feature_vec(11)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[1,0,2];
              feature_vec(12)=feature_vec(12)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[1,1,0];
              feature_vec(13)=feature_vec(13)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[1,1,1];
              feature_vec(14)=feature_vec(14)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[1,1,2];
              feature_vec(15)=feature_vec(15)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[1,2,0];
              feature_vec(16)=feature_vec(16)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[1,2,1];
              feature_vec(17)=feature_vec(17)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[1,2,2];
              feature_vec(18)=feature_vec(18)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[2,0,0];
              feature_vec(19)=feature_vec(19)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[2,0,1];
              feature_vec(20)=feature_vec(20)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[2,0,2];
              feature_vec(21)=feature_vec(21)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[2,1,0];
              feature_vec(22)=feature_vec(22)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[2,1,1];
              feature_vec(23)=feature_vec(23)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[2,1,2];
              feature_vec(24)=feature_vec(24)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[2,2,0];
              feature_vec(25)=feature_vec(25)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[2,2,1];
              feature_vec(26)=feature_vec(26)+1;
              elseif[r(i,j),g(i,j),b(i,j)]==[2,2,2];
              feature_vec(27)=feature_vec(27)+1;
            end
        end
    end
    feature=feature_vec;
    