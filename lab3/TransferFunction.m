Z1 = [1.4*exp((1i*pi)/3); 1.4*exp(-(1i*pi)/3); 1.2*exp((1i*2*pi)/3); 1.2*exp(-(1i*2*pi)/3)];
P1 = [0.7*exp((1i*pi)/6); 0.7*exp(-(1i*pi)/6); 0; 0];
[num1, den1] = zp2tf(Z1,P1,1);
Tf1 = filt (num1, den1);
subplot(311);
impz(num1, den1);
title('Transfer Function 1');

P2 = [exp(-(1i*pi)/4);exp((1i*pi)/4)];
Z2 = [-1;1];
[num2, den2] = zp2tf(Z2, P2, 1);
Tf2 = filt (num2, den2);
subplot(312);
impz(num2, den2);
title('Transfer Function 2');

P3 = [1;1];
Z3 = [0;0];
[num3, den3] = zp2tf(Z3, P3, 1);
Tf3 = filt (num3, den3);
subplot(313);
impz(num3, den3);
title('Transfer Function 3');

