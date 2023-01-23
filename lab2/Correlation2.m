[m, Mfs] = audioread('m1.wav');
[f, Ffs] = audioread('f1.wav');
[autom, lagm] = xcorr(m);
[autof, lagf] = xcorr(f);

figure
subplot(2,1,1);
plot(lagm, autom);
title('m');
subplot(2,1,2);
plot(lagf, autof);
title('f');