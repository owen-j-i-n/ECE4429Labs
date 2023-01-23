ecg = load('ecg.dat');%load
len = length(ecg);%length
fs = 500;%sampling Frequency

w = 0:1/fs:(len-1)/fs
ecg_fft = fft(ecg);
fr = 0 : fs/len : fs/2-fs/len;

subplot(2,1,1);
plot(w, ecg);
title('Waveform of ecg')
subplot(2,1,2);
plot(fr,abs(ecg_fft(1:len/2)));
title('2.magnitude Spectrum ecg');