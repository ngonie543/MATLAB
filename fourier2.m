%% Fourier Series Builder
%  Justin Ndhlala (njn7)
%  Part (e)
%% Initialize workspace
clear; format short e

%% Signal parameters (period, amplitude, and signal code)
T = 6;
A = 1;
Signal = 'square';

%% Harmonics to use in calculation
N = 81;

%% Calculations of fundamental frequency and plot range
w0 = 2*pi/T;
t  = linspace(-2*T, 2*T, 10000);

%% Signal functions and
%  Fourier series expression based on desired signal
switch Signal
    case 'square'
        vinr = @(t) A*sign(cos(2*pi*t/T));
        C0 = 0;
        Cn = @(n) (cos(2*pi*n/3)-cos(pi*n/3))/(j*n*pi);
    case 'triangular'
        vinr = @(t) A*(...
            1 - ...
            4*mod(t,T)/T +...
            (8*mod(t-T/2,T)/T).*((mod(t,T)/T)>0.5) );
        C0 = 0;
        Cn = @(n) A*(sinc(n/2)^2);
    case 'sawtooth'
        vinr = @(t) A*(2*mod(t-T/2,T)/T-1);
        C0 = 0;
        Cn = @(n) j*A*(-1).^n / n / pi;
    case 'hwrs'
        vinr = @(t) A*sin(2*pi*t/T).*(sign(sin(2*pi*t/T))~=-1);
        C0 = A/pi;
        nn = @(n) (abs(n)==1).*(0) + (abs(n)~=1).*n;
        Cn = @(n) A*((mod(n,2)==0).*(1/pi/(1-nn(n).^2)) + ...
            (abs(n)==1).*((-1)^((n+1)/2)*j/4));
end

%% Build signal 
vin = C0;
for n=[-N:-1 1:N]
    vin = vin + Cn(n)*exp(j*n*w0*t);
end
vin = real(vin); % remove roundoff imaginary bits

%% Plot
figure(1); clf
plot(t, vinr(t), 'g--', t, vin, 'k-')
legend('Signal', 'FS Rep', 'location', 'EastOutside')
% Zoom out a bit in case curves hit figure boundaries
v  = axis; n  = 0.05;
xr = (v(2)-v(1)); yr = (v(4)-v(3));
axis([v + n*[-xr xr -yr yr]]);
title('Graph for Part 1 (e)')
xlabel('t');
ylabel('x(t)');




