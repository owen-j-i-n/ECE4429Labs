load('sensor_data.mat');

[a, lag1] = xcorr(s1,s2);
[b, lag2] = xcorr(s1, s3);
[c, lag3] = xcorr(s2, s3);

figure
subplot(3,1,1);
plot(lag1, a);
title('Xcorr s1,s2');

subplot(3,1,2);
plot(lag2, b);
title('Xcorr s1,s3');

subplot(3,1,3);
plot(lag3, c);
title('Xcorr s2,s3');