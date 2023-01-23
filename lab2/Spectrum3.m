seismic = load('seismic.dat');%load
lensei = length(seismic);%number of length
fss = 15;%sample rate
t = 1/fss*(0:lensei-1);

s_fft = fft(seismic);
freq=0 : fss/lensei : fss/2-fss/lensei;

subplot(2,1,1);
plot(t,seismic(1, :));
title('seismic waveform');
subplot(2,1,2);
plot(freq, abs(s_fft(1:lensei/2)));
title('Magnitude Spectrum of Seismic');


