H = [1 0.1929 0.9861 -0.2393 0.4408 -0.1956 0.1139];
zplane(1, H);
figure
impz(1,H);
figure%magnitude and phase response
freqz(1,H); % Plots frequency response
title('The magnitude and phase response');