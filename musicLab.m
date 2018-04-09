fs=8000;
t1=[0:1/fs:0.5-1/fs];
t2=[0.5:1/fs:1-1/fs];
t3=[1:1/fs:1.5-1/fs];
t4=[1.5:1/fs:2-1/fs];
t5=[2.5:1/fs:3-1/fs];
t6=[3:1/fs:3.5-1/fs];
t7=[3.5:1/fs:4-1/fs];
t8=[4:1/fs:4.5-1/fs];
t9=[4.5:1/fs:5-1/fs];
t10=[5:1/fs:5.5-1/fs];


t=[t1 t2 t3 t4 t5 t6 t7 t8 t9 t10];

A=220;
B=220*2^(2/12);
D=220*2^(5/12);
G=220*2^(10/12);


line1=musicfunction(C,t1);
line2=musicfunction(A,t1);
line3=musicfunction(G,t1);
line4=musicfunction(A,t1);
line5=musicfunction(B,t1);
line6=musicfunction(B,t1);
line7=musicfunction(B,t1);
line8=musicfunction(A,t1);
line9=musicfunction(A,t1);
line10=musicfunction(A,t1);
line11=musicfunction(B,t1);
line12=musicfunction(D,t1);
line13=musicfunction(D,t1);

line14=musicfunction(B,t1);
line15=musicfunction(A,t1);
line16=musicfunction(G,t1);
line17=musicfunction(A,t1);
line18=musicfunction(B,t1);
line19=musicfunction(B,t1);
line20=musicfunction(B,t1);
line21=musicfunction(B,t1);
line22=musicfunction(A,t1);
line23=musicfunction(A,t1);
line24=musicfunction(B,t1);
line25=musicfunction(A,t1);
line26=musicfunction(G,t1);

line=[line1, line2 line3 line4 line5 line6 line7 line8 line9 line10 line11 line12 line13 line14 line15 line16 line17 line18 line19 line20 line21 line22 line23 line24 line25 line26 ];
soundsc(line,fs);

t1=[0:1/fs:1-1/fs];
