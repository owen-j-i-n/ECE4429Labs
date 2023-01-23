[a, lag1] = xcorr(s1,s2);
[b, lag2] = xcorr(s3, s1);
[c, lag3] = xcorr(s2, s3);

[Ma,i1] = max(a);
[Mb,i2] = max(b);
[Mc,i3] = max(c);

ta = lag1(i1);
tb = lag2(i2);
tc = lag3(i3);

s1 = s1(ta:end);
s3 = s3(-tc:end);

ax(1) = subplot(3,1,1);
plot(s1)
title('s_1')
ax(2) = subplot(3,1,2);
plot(s2)
title('s_2')
ax(3) = subplot(3,1,3);
plot(s3)
title('s_3')
