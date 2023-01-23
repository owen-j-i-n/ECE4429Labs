fs = 6000;%Sampling Frequency
t = 0 : 1/fs : 99/fs;%100 samples
x = (sin(2000*pi*t).^2).*(cos(2000*pi*t).^2);
y = 1/8 - 1/8*cos(4000*pi*t);

figure
subplot(2,1,1);
plot(t, x);
title('(a)');
subplot(2,1,2);
plot(t,y);
title('(b)');

