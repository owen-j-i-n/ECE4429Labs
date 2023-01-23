load('quakedata.mat');
fc = 100;
wc = 2*pi*fc/fs;
A = 55;
ftr = 50;
D = (A-7.95)/14.36;
N = ceil(1+(D*fs)/ftr);
M = (N-1)/2;
n = 0:N-1;
alpha=0.1102*(A-8.7);

w=kaiser(N,alpha);

h_lpdd = (wc*cos(wc*(n-M))./(pi*(n-M))) - (sin(wc*(n-M))./(pi*(n-M).^2));
h_lpdd(M+1) = 0;

hwin_lpdd = h_lpdd.*w';
fvtool(hwin_lpdd)

subplot(3,1,1)
plot(drift_data)
title('Displacement')
subplot(3,1,2)
velosity = filter(hwin_lpdd,1,drift_data)
plot(velosity)
title('Velocity')
subplot(3,1,3)
acc = filter(hwin_lpdd,1,velosity)
plot(acc)
title('Acceleration')

%%full-band digital differentiator
wc = pi;
h_LPDD_2 = (wc*cos(wc*(n-M))./(pi*(n-M))) - (sin(wc*(n-M))./(pi*(n-M).^2));
h_LPDD_2(M+1) = 0;
hwin_LPDD_2 = h_LPDD_2.*w';
fvtool(hwin_LPDD_2)

figure;
subplot(3,1,1)
plot(drift_data)
title('Displacement')
subplot(3,1,2)
velosity = filter(hwin_LPDD_2,1,drift_data)
plot(velosity)
title('Velocity 2')
subplot(3,1,3)
acc = filter(hwin_LPDD_2,1,velosity)
plot(acc)
title('Acceleration 2')

%%first order difference filter
figure;
subplot(3,1,1)
plot(drift_data)
title('Displacement')
subplot(3,1,2)
plot(diff(drift_data))
title('Velocity 3')
subplot(3,1,3)
plot(diff(diff(drift_data)))
title('Acceleration 3')


