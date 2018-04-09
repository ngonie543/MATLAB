t=linspace(0,3,100);
V=4*cos(3*t);
I=sin(3*t)/12;
p=V.*I;
figure(1),clf

subplot(3,1,1)
plot(t,V,'k-')
grid on
title('Plots for P1.5-6 (njn7)');xlabel('time(s)');ylabel('Voltage(V)');

subplot(3,1,2)
plot(t,I,'k-');xlabel('time(s)');ylabel('Current(A)')
grid on

subplot(3,1,3)
plot(t,p,'k-');xlabel('time(s)');ylabel('Power(W)')
grid on



%print -deps Plot