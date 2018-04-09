fs=8000;
t1=[0:1/fs:0.75-1/fs];
t2=[0:1/fs:1.5-1/fs];




A=220;
A1=220*2^(12/12);
B=220*2^(2/12);
C=220*2^(3/12);
D=220*2^(5/12);
E=220*2^(7/12);
F=220*2^(8/12);
G=220*2^(10/12);

% C= 278.4375
% D =312.5355
% E =350.8093
% F =371.6695
% G =417.1849
% A =468.2742
% B =525.6200
% %C= 556.8750

line1=musicfunction(C,t1);
line2=musicfunction(C,t1);
line3=musicfunction(G,t1);
line4=musicfunction(G,t1);
line5=musicfunction(A1,t1);
line6=musicfunction(A1,t1);
line7=musicfunction(G,t2);
line8=musicfunction(F,t1);
line9=musicfunction(F,t1);
line10=musicfunction(E,t1);
line11=musicfunction(E,t1);
line12=musicfunction(D,t1);
line13=musicfunction(D,t1);
line14=musicfunction(C,t2);
line15=musicfunction(G,t1);
line16=musicfunction(G,t1);
line17=musicfunction(F,t1);
line18=musicfunction(F,t1);
line19=musicfunction(E,t1);
line20=musicfunction(E,t1);
line21=musicfunction(D,t2);
line22=musicfunction(G,t1);
line23=musicfunction(G,t1);
line24=musicfunction(F,t1);
line25=musicfunction(F,t1);
line26=musicfunction(E,t1);
line27=musicfunction(E,t1);
line28=musicfunction(D,t2);
line29=musicfunction(G,t1);










line=[line1, line2 line3 line4 line5 line6 line7 line8 line9 line10 line11 line12 line13 line14 line15 line16 line17 line18 line19 line20 line21 line22 line23 line24 line25 line26 line27 line28];
linee=[line line line1 line2 line3 line4 line5 line6 line7 line8 line9 line10 line11 line12 line13 line14];


t=1:length(linee);
Volume=exp(t).*5.*t.^2+5*t;
Harmonics=10*cos(2*pi*220*t) + 5*cos(2*pi*220*t) + 2*cos(2*pi*220*t);
final =Harmonics.* linee;



final1=[0000 final] + [final 0000];
linee2=Volume.* linee;

linee1= [0000000000 linee] + [linee 0000000000];
soundsc(final1,fs);



