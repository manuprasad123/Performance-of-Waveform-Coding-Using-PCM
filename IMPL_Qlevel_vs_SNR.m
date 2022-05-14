% Code created by Manu Prasad (IMPLearn)%
% Program for plotting quantization level vs SNR

l=[8,16,32,64,128];% defining different levels
for i=1:length(l)
    r(i) = IMPL_Quant(l(i));% calling the function
end
%Plotting
plot(l,r)
xlabel('L')
ylabel('SNR')
title('L vs SNR')