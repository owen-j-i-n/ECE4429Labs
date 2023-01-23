[m, Mfs] = audioread('m1.wav');
[f, Ffs] = audioread('f1.wav');
Lm = length(m);
Lf = length(f);

m_fft = fft(m);
fm = 0 : Mfs/Lm : Mfs/2-Mfs/Lm; %scale fs/2 to the bins.
tm = 0:1/Mfs:(Lm-1)/Mfs;%for normal waveform

f_fft = fft(f);
ff = 0 : Ffs/Lf : Ffs/2-Ffs/Lf;
tf = 0:1/Ffs:(Lf-1)/Ffs;

figure
subplot(2,2,1);
plot(tm, m);
title('m-waveform')
subplot(2,2,2);
plot(fm,abs(m_fft(1:Lm/2)));
title('1.m-fft');
subplot(2,2,3);
plot(tf, f);
title('f-waveform')
subplot(2,2,4);
plot(ff,abs(f_fft(1:Lf/2)));
title('1.f-fft');






