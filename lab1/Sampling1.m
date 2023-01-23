frequencies=1000: 3000: 7000; %frequency settings
fs=8000;
T=0:1/fs:2; %sampling time

for fi=frequencies %fi = 1000, 4000, 7000 for three turns of for loop
    x = 0.25*sin(2*pi*fi*T);%sinusoidal function
    %plot spectrogram, section length of fs/10, fs/20 samples of overlap
    %fs/10 DFT points
    spectrogram(x,fs/10,fs/20,fs/10,fs,'yaxis')
    pause
end