speech = audioread('speech_female.wav');

figure
spectrogram(speech,1024,768,2048,32000,'yaxis'); % change the “sig” variable to your needs.
caxis([-90 -20]); % set the color scale limits to -90 to -20, for a better view.

speech_A = filter(filterA,speech);
speech_B = filter(filterB,speech);
speech_C = filter(filterC,speech);

figure
spectrogram(speech_A,1024,768,2048,32000,'yaxis'); % change the “sig” variable to your needs.
caxis([-90 -20]); % set the color scale limits to -90 to -20, for a better view.

figure
spectrogram(speech_B,1024,768,2048,32000,'yaxis'); % change the “sig” variable to your needs.
caxis([-90 -20]); % set the color scale limits to -90 to -20, for a better view.

figure
spectrogram(speech_C,1024,768,2048,32000,'yaxis'); % change the “sig” variable to your needs.
caxis([-90 -20]); % set the color scale limits to -90 to -20, for a better view.