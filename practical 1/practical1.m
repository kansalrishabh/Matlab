clear all
clc
t = (-10:1:10);
impulse = t==0;
subplot(2,4,1);
plot(t,impulse);
xlabel('time');
ylabel('amplitude');
title('impulse signal');

unitstep = t>=0;
subplot(2,4,2);
plot(t,unitstep);
xlabel('time');
ylabel('amplitude');
title('unit step');

ramp = t.*unitstep;
subplot(2,4,3);
plot(t,ramp);
xlabel('time');
ylabel('amplitude');
title('ramp signal');

x=(0:0.1:2*3.14);
y=sin(x);
subplot(2,4,4);
plot(x,y);
xlabel('time');
ylabel('amplitude');
title('sine wave');

y=cos(x);
subplot(2,4,5);
plot(x,y);
xlabel('time');
ylabel('amplitude');
title('cos wave');

t=[0:0.1:10];
x=exp(-t);
subplot(2,4,6);
plot(t,x);
xlabel('time');
ylabel('amplitude');
title('exp decaying');

x=exp(t);
subplot(2,4,7);
plot(t,x);
xlabel('time');
ylabel('amplitude');
title('exp increasing');
