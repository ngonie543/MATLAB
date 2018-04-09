fs=8e3; 
t=0:1/fs:1-1/fs; 
f0=[494,440,392,440,494,494,494]; 
a=exp(-5*t); 
x1=a.*sin(2*pi*f0(1)*t); 
x2=a.*sin(2*pi*f0(2)*t); 
x3=a.*sin(2*pi*f0(3)*t); 
x4=a.*sin(2*pi*f0(4)*t); 
x5=a.*sin(2*pi*f0(5)*t); 
x6=a.*sin(2*pi*f0(6)*t); 
x7=a.*sin(2*pi*f0(7)*t); 
X=[x1,x2,x3,x4,x5,x6,x7]; 
sound(X,fs);