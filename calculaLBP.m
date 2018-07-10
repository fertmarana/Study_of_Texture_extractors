function descritor = calculaLBP(I) 
%[FileName,PathName] = uigetfile('*.png','Select the MATLAB code file');
%imageDIR = strcat(PathName, FileName);
%I = imread(imageDIR);

%I = rgb2gray(I);
[altura, largura] = size(I);
LBP = zeros(altura,largura);
pesos = [1,2,4; 128, 0,8 ; 64,32,16];

for i= 2:(altura-1)
    for j= 2:(largura-1)
        p = I(i-1:i+1, j-1:j+1);
        p = p > I(i,j);
        p = p.*pesos;
        LBP(i,j)= sum(sum(p));
        
    end
end

histograma = zeros(1,256);
for i=2:altura-1
    for j=2:largura-1
    histograma(LBP(i,j)+1)=  histograma(LBP(i,j)+1) + 1;
    
    end
end

descritor = histograma/((altura-2)*(largura-2));
return 
