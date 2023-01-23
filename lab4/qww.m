f = [0 250 500 1000 2000 4000 8000 10000 15000 16000]/16000;
gain_db = -1*[0 -5 2 3 -8 9 6 4 -2 0];
gain_mag = db2mag(gain_db);
N = [11 31 101 1001];%Matlab uses filter order, the length is N+1
fir = {};
for i = 1:4
fir{i} = fir2(N(i) - 1,f,gain_mag)%Frequency sampling FIR design 
end
for i = 1:4
figure
freqz(fir{i});
hold on
scatter(f,gain_db);
scatter(f,-1*gain_db, 'green');
figure
subplot(2,1,1);
phasedelay(fir{i});
subplot(2,1,2);
grpdelay(fir{i});
end