fs = 5000; %Sampling frequency
t = 0 : 1/fs : 0.02;%time in 0.02s
xmin = -5;
xmax = 5;
m = 8;
y = 2*sin(600*pi*t);%analog
[yq, eq, SQNR] = Quantization1(y, xmin, xmax,m);
SQNR_th = 20*log10(2^m) +20*log10(sqrt(12)/(2*sqrt(2)));%theoretical SNRs
figure
subplot(2,1,1);
plot(t, y);
title('original');
subplot(2,1,2);
plot(t, yq);
title('quantized');