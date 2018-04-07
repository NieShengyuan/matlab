
[X,map]=imread('E:\1smart Car\BimabeProgess\img2.bmp'); %载入图像文件 
X2=im2uint8(X,'indexed');
img_origin=ind2gray(X2,map);
img_size = size(img_origin); % 返回矩阵的行数或列数 其中r=size(A,1)该语句返回矩阵A的行数row为垂直方向 

img_undist = zeros(60,80 ); % zeros(m,n)产生m×n的全0矩阵 所有元素初始化为0    
new_size = size(img_undist); % 返回m×n全0矩阵的行数或列数  
img_undist = uint8( img_undist );  

for i = 1:(img_size(1))  
    for j=1:(img_size(2))% 水平方向 60
        if mod(i,10)==0
            img_undist(i,j)= 1; %对应坐标替换画线
        elseif mod(j,10)==0
            img_undist(i,j)= 1; %对应坐标替换画线
        else
            img_undist(i,j)= img_origin(i,j); %对应坐标传入   
        end 
    end
end


  
subplot(1,2,1);imshow(img_origin);title('原图，60*80');  
imgName = 2
subplot(1,2,2);imshow(img_undist);title(num2str(imgName)); 
