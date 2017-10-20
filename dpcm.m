clc;
clear all;
x=input('enter string')
k=length(x)
t=[0.01:0.01:k]
m=10
c=20
z=m*c
M((i-1)*100+1:i*1000)=a(i)
p=randperm(n)
mod(1,randperm(m))
gtext('string')
a=mod(1,randperm(m))
k=length(a)
t=[0.01:0.01:k]
c=sin(2*3.14*5*t)
for i=1:1:k
    m((i-1)*100+1:i*1000)=a(i)
end
subplot(2,2,1)
plot(m)
subplot(2,2,2)
plot(c)
z=c*m
subplot(2,2,3)
plot(z)
