clc;  clear all;  close all;
tb=1;  fc=10;
t=0:tb/100:1;
c=sqrt(2/tb)*sin(2*pi*fc*t);

n=10;
m=rand(1,n);
t1=0; t2=tb;
for i=1:n
    t=[t1:.01:t2]
    if m(i)>0.5
        m(i)=1;
        m_s=ones(1,length(t));
    else
        m(i)=0;
        m_s=zeros(1,length(t));
    end
    message(i,:)=m_s;
    
    ask_sig(i,:)=c.*m_s;
    t1=t1+(tb+.01);
    t2=t2+(tb+.01);
    
    subplot(4,1,2); axis([0 n -2 2]);
    plot(t,message(i,:),'r');
    title('message signal');
    xlabel('time');
    ylabel('m(t)'); grid on ;hold on;
    subplot(4,1,4); plot(t,ask_sig(i,:));
    title('ASK signal'); xlabel('time'); ylabel('s(t)'); 
    grid on ;hold on;
end
hold off

subplot(4,1,3); plot(t,c);
title('carrier signal');  xlabel('time'); ylabel('c(t)'); grid on ;
subplot(4,1,1); stem(m);
title('binary data bits');  xlabel('time'); ylabel('b(n)'); grid on;
