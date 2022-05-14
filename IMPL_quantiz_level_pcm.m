% Code created by Manu Prasad (IMPLearn)%
% Generate a sinusoidal waveform with a DC offset so that it takes only
% positive amplitude value
clear;% clearing the variables
close all;% closing any opened figures
% Plotting the offset sinusoidal signal
time = 0:.0005:.05;
freq_msg=100; %wave form frequency
dc_ofst=2; % signal offset
signal=sin(2*pi*freq_msg*time)+dc_ofst; %Generating the signal
% plotting the signal
figure;plot(time,signal)
xlabel('time')
ylabel('Amplitude')
title('Signal')

% Sampling the signal
freq_sample=15*freq_msg; % sampling frequency
samp_time=0:1/freq_sample:0.05; % sampling time
samp_signal=dc_ofst+sin(2*pi*freq_msg*samp_time);% generating the sampled signal
hold on
plot(samp_time,samp_signal,'rx') % plotting the sampled signal 
title('Sampled Signal')
legend('Original signal','Sampled signal');

% Uniform Quantizer
L=8; %No of Quantization levels
smin=round(min(signal));
smax=round(max(signal));
Quant_levl=linspace(smin,smax,L); % Length 8, to represent 9 intervals
codebook = linspace(0,smax,L+1); % Length 9, one entry for each interval
[index,quants] = quantiz(samp_signal,Quant_levl,codebook); % Quantize.
figure;plot(samp_time,samp_signal,'x',samp_time,quants,'.-')% plotting sampled signal and quantization level
title('Quantized Signal')
legend('Original signal','Quantized signal');
figure;plot(samp_time,index,'.-')% plotting quantization levels of input signal 
title('Encoded Signal')

% % Quantization Levels plotting
% u = 0:0.01:1;
% y = uencode(u,4);
% figure;plot(u,y)
% title('Quantization Levels')

% Binary coding
for i=1:length(index)
    bincode_sig{i}=dec2bin(round(index(i)),7);
end
disp('binary encoded signal')
disp(bincode_sig)
% SNR ratio calculation
noise=quants-samp_signal; % calculating noise
figure;plot(samp_time,noise,'.-') % plotting figure
title('Noise')
r=snr(index,noise);% SNR
snr1=['SNR :',num2str(r)];
disp(snr1)