%%Justin Ndhlala
%%Lab1: Music Synthesis
%%?I have adhered to the Duke Community Standard in completing this
%%assignment?[njn7]



 %%Fundamental Frequency
fs=8000;

%%Time vector for short notes
t1=[0:1/fs:0.5-1/fs];

%%Time vector for slonger notes
t2=[0:1/fs:1-1/fs];


%%Frequencies for each note
A=220;
A1=220*2^(12/12);
B=220*2^(2/12);
C=220*2^(3/12);
D=220*2^(5/12);
E=220*2^(7/12);
F=220*2^(8/12);
G=220*2^(10/12);

%%Lines for each note
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









%%Concatenated vector
line=[line1, line2 line3 line4 line5 line6 line7 line8 line9 line10 line11 line12 line13 line14 line15 line16 line17 line18 line19 line20 line21 line22 line23 line24 line25 line26 line27 line28];

%%Time vector for multiplication purposes
%t=1:length(linee);

%%Volume variation
Volume=exp(t1).*5.*t1.^2+5*t1.*line;

%%Harmonics
Harmonics=10*cos(2*pi*220*t) + 5*cos(2*pi*220*t) + 2*cos(2*pi*220*t);
final =Harmonics.* linee;


%%Reverb
final1=[0000 final] + [final 0000];





%%Saving audio file
line=line/max(line);
soundsc(line,fs);
filename='Twinkle.wav';

audiowrite(filename, line, fs);



