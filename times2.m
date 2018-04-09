
fc = 10e3;
fs = 80e3;

%% Generate a sinusoidal signal having a 1 s duration.
t = [0:1/fs:1]';
s = sin(2*pi*300*t)+2*sin(2*pi*600*t);

%% Generating low pass filter
[num,den] = butter(10,fc*2/fs); 

%% Amplitude Modulation
y = ammod(s,fc,fs);

%% Demodulation
s1 = amdemod(y,fc,fs,0,0,num,den);

%% Plots
plot(t,s,'c',t,s1,'b--')
legend('Original Signal','Demodulated Signal')
xlabel('Time (s)')
ylabel('Amplitude')




