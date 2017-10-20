clc
clear all
F=500e3;
f=10e3;
t=0:1/F:5/f;
x=sin(2*3.14*f*t);
subplot(3,1,1);
plot(t,x);
xlabel('time');
ylabel('amplitude');
title('sine wave of 10kHZ');

fs1=30e3;
t1=0:1/fs1:5/f;
x1=sin(2*3.14*f*t1);
subplot(3,1,2);
plot(t1,x1);
hold on;
stem(t1,x1);
xlabel('time');
ylabel('amplitude');
title('sampled at 30kHz');

fs2=50e3;
t2=0:1/fs2:5/f;
x2=sin(2*3.14*f*t2);
subplot(3,1,3);
plot(t2,x2);
hold on;
stem(t2,x2);
xlabel('time');
ylabel('amplitude');
title('sampled at 50kHz');
