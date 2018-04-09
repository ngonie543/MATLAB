n=0:100;
D=4000;
fs=8000;
fd=2000;

d=D + (D/2)*(1-sin(2*pi*fd*n/fs));
plot(n,d)
xlabel('n')
ylabel('d')
title('Plot for flange effect')