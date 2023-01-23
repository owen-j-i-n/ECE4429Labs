ecg = load('ecgbn.dat');
len = length(ecg);
fs = 600;
t = 1/fs*(0:len-1);

ecg_fft = fft(ecg);
frq = 0 : fs/len : fs/2-fs/len;
figure
plot(frq, abs(ecg_fft(1:len/2)));
title('ecg Magnitude Spectrum');

Z = [exp(-(1i*60*2*pi)/600);exp((1i*60*2*pi)/600);exp(-(1i*120*2*pi)/600);exp((1i*120*2*pi)/600);exp(-(1i*180*2*pi)/600);exp((1i*180*2*pi)/600)];
P = [0.95*exp(-(1i*60*2*pi)/600);0.95*exp((1i*60*2*pi)/600);0.95*exp(-(1i*120*2*pi)/600);0.95*exp((1i*120*2*pi)/600);0.95*exp(-(1i*180*2*pi)/600);0.95*exp((1i*180*2*pi)/600)];
[num, den] = zp2tf (Z,P,1);
Tf = filt (num, den);
figure
zplane(num, den);

figure
freqz(num, den); % Plots frequency response
title('The magnitude and phase response');

ecg_filter = filtfilt(num, den, ecg);
figure
subplot(211);
plot(t, ecg);
title('ecg');
xlabel('time(seconds)') 
ylabel('Amplitude') 
subplot(212);
plot(t, ecg_filter);
title('ecg filtered');
xlabel('time(seconds)') 
ylabel('Amplitude') 


figure
subplot(211);
plot(frq, abs(ecg_fft(1:len/2)));
title('ecg Magnitude Spectrum');
subplot(212);
ecg_fft_filter = fft(ecg_filter);
plot(frq, abs(ecg_fft_filter(1:len/2)));
title('ecg_filter Magnitude Spectrum');

