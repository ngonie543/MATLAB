P=@(t) 0.6*(exp(-8*t)-exp(-16*t));
f=@(t) -0.6*(exp(-8*t)-exp(-16*t));
t=linspace(0,1,100);
plot(t,P(t))
title('Power vs time');
xlabel('Time(s)');
ylabel('Power(W)');


t1=fminsearch(f,0.06);
disp(t1);
Pmax=P(t1)

print -deps Plot2
