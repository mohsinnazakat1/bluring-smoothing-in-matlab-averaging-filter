% keep the image and the file in the same directory 

A = rgb2gray(imread("abc.png"));
[R,C]=size(A);
B = zeros (R,C);
for i = 2:1:R-1
    for j= 2:1:C-1
        temp = A(i-1:i+1,j-1:j+1);
        total = sum(temp,'all');
        value = total/9;
        B(i,j)=value;
    end
end
%Displaying image after low pass filter 

uint8(B);
figure; imshow(uint8(A)); title('Actual Image');
figure; imshow(uint8(B)); title('Blurred/Smooth Image');




