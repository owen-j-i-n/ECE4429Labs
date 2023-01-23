f = [0 250 500 1000 2000 4000 8000 10000 15000 16000]/16000;
gaindb = -1*[0 -5 2 3 -8 9 6 4 -2 0];
gains = db2mag(gaindb);
N = [10 30 100 1000];

fir = {};
for j = 1:4
fir{j} = fir2(N(j),f,gains)%Frequency sampling FIR design 
end

for j = 1:4
figure;freqz(fir{j});
hold on
scatter(f,gaindb);
scatter(f,-1*gaindb, 'm*');

figure;
subplot(2,1,1);
phasedelay(fir{j});
subplot(2,1,2);
grpdelay(fir{j});
end