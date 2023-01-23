vbr = load('vbrdata.dat');
len = length(vbr);
fs = 1000;
t = 1/fs*(0:len-1);

vbr_fft = fft(vbr);
frq = 0 : fs/len : fs/2-fs/len;

subplot(2,1,1);
plot(t,vbr(1, :));
title('vbr waveform');

subplot(2,1,2);
plot(frq, abs(vbr_fft(1:len/2)));
title('vbr Magnitude Spectrum');