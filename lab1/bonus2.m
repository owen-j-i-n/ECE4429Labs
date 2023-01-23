f1 = 100;
u = 2000;
A = 0.25;
fs = 48000;
fs2 = 16000;
t = 0: 1/fs : 8;
x = A.*cos(pi*u*(t.^2) + 2*pi*f1*t);
    spectrogram(x,fs/10,fs/20,fs/10,fs,'yaxis')
    sound(x, fs)