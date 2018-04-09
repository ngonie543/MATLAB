D=0:0.01:1;
Z=-D./(1-D);
y=3.1623*D;
plot(D,Z);
hold on
K=zeros(1,length(D))+0.1;
plot(D,K);
grid on
axis([0 1 -10 10])