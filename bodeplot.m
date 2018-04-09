%%13.6-1

w=logspace(log10(1),log10(1000));
for j=1:length(w)
    H(j)=(1/(1+j*0.02*w(j)))-(j*0.05*w(j))/(1+j*0.05*w(j));
    G(j)=abs(H(j));
    Phase(j)=angle(H(j)*180/pi);
end

subplot(2,1,1), semilogx(w,G)
xlabel('w(rad/s)')
ylabel('Gain(dB)')
title ('Bode plot for 13.6-1')

subplot(2,1,2), semilogx(w,Phase)
xlabel('w(rad/s)')
ylabel('Phase(degrees)')

