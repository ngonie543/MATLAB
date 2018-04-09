x = [0:0.1:2*pi];
y = sin(400*pi*x).*(sin(200*pi*x)+2*sin(400*pi*x));
z = fft(y);
z = fftshift(z);
N = length(y);
f = [-N/2:N/2-1]/N;
plot(f,abs(z))