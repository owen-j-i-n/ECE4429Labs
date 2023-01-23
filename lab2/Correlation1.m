Fs = 8000;
t = 0 : 1/Fs : 299/Fs;
x = sin(2000*pi*t);
nv = 0.75*randn(1,300);

a = x + nv;
figure
subplot(2,1,1);
plot(t, a);
title('a');

auto = xcorr(a,a);
t2 = -fliplr(t);
nl = min(t)+min(t2);
nh = max(t)+max(t2);

t = nl:1/Fs:nh;
subplot(2,1,2);
plot(t, auto);
title('b');
