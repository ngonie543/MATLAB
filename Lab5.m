%% Transfer Function Estimate 
figure(1)
semilogx(EstAccOmega, (20*log10(EstAccMag)))
xlabel('Angular Frequency (rad/s)')
ylabel('|H| (dB)')
title('Transfer Function Estimate')

EstAccVolTF = EstAccTF.*(9.8./(100*10^(-3)));
EstVelVolTF = EstAccVolTF./(2.*pi.*EstAccF);

EstVVTFmag = abs(EstVelVolTF);

%% Theoretical Model
qemf = 6.6;
m = (10 + 2 + .574)*10^(-3);
Lsp = .8*10^(-3);
ksus = 917;
Qm = 1.78;
b = sqrt(ksus.*.01)./(Qm);
Rsp = 6.1;
k = 2698 + ksus;
s = tf('s');


G1 = (qemf.*s)/((m.*Lsp).*s^(3) + (b.*Lsp + m.*Rsp).*s^(2) + ...
    (k.*Lsp + b.*Rsp + qemf^(2)).*s + (k.*Rsp));
F = logspace(0, 5, 1000);
Omega = (2 * pi * F);
%  Bode command to analyze transfer function
[G1Mag, G1Phase, G1Omega] = bode(G1, Omega);
G1Mag = squeeze(G1Mag);

%% Make plot
% figure(2); clf
% semilogx(EstAccOmega, 20*log10(EstVVTFmag), 'k-')
% hold on
% semilogx(G1Omega, 20*log10(G1Mag), 'k:')
% hold off
% xlabel('\omega, rad/s')
% ylabel('|H|, dB')
% title('Transfer Function between Velocity of Speaker and Applied Voltage')
% legend('Measured Transfer Function','Theoretical Transfer Function')

%% Model Correction
bacc = 1;
kacc = 55000;

% G2 = ((-2.5*10^(8)*bacc)*s^(2))/((-5287*s^(5)) - (2.644*10^(6)*s^(4)) - ...
%     (2.1435*10^(6)*kacc+(1.8075*10^(9))-(4.253*10^(8)*bacc))*s^(3) - ...
%     (9.0375*10^(4))*s^(2) + (2.5*10^(8)*(kacc^2)-(9.0375*10^(11)*kacc))*s);
% [G2Mag, G2Phase, G2Omega] = bode(G2, Omega);
% G2Mag = squeeze(G2Mag);

G2 = (6.6*bacc*s^(2))/((s^(5)*1.69184*10^(-8)) + ...
    ((.0000100592*bacc) + .00013172472)*s^(4) + ...
    (.0016*bacc^(2) + .07806236*bacc + (.0000100592)*kacc + ...
    .11365864)*s^(3) + ((3615+kacc)*.0008*bacc + .07806236*kacc + ...
    12.2*bacc^(2) + 53.93732*bacc + 44.103)*s^(2) + ...
    (.0008*kacc*(3615+kacc) + 6.1*(3615 + kacc)*bacc + 53.93732*kacc)*s ...
    + 6.1*kacc*(3615+kacc));
[G2Mag, G2Phase, G2Omega] = bode(G2, Omega);
G2Mag = squeeze(G2Mag);

% Plot
figure(3); clf
semilogx(EstAccOmega, 20*log10(EstVVTFmag), 'k-')
hold on
semilogx(G1Omega, 20*log10(G1Mag), 'k:')
hold on
semilogx(G2Omega, 20*log10(G2Mag), 'r-')
hold off
xlabel('\omega, rad/s')
ylabel('|H|, dB')
title('Transfer Function between Velocity of Speaker and Applied Voltage')
legend('Measured Transfer Function','Theoretical Transfer Function',...
    'Corrected Transfer Function','Location','best')
