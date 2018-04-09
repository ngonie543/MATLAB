%Justin Ndhlala


x=1:10;
y=1:10;

V=[0.25,0.2,0.08,0,0,0,0,0.98,0.21,0.29;
0.39,0.29,0.1,0,0.03,0,0,0.14,0.33,0.43;
0.63,0.47,0.17,0,0.13,0.12,0,0.22,0.53,0.699;
1.16,0.86,0.36,0,0.42,0.38,0,0.42,1,1.17;
1.91,1.7,1.05,0,1.17,1.15,0,0.97,1.65,1.89;
2.93,2.83,2.61,2.55,2.76,2.79,2.54,2.55,2.72,2.8;
3.93,3.99,4.1,4.38,4.78,4.8,4.36,4.04,3.86,3.8;
4.85,5.06,5.38,6.05,7.2,7.3,5.96,5.2,4.86,4.64;
5.55,5.78,6.2,7.22,0,0,7.18,6.08,5.52,5.29;
5.96,6.18,6.67,7.42,0,0,7.51,6.55,5.96,5.63];

V1=gradient(V);
%Since the distance between points is constant, I just assumed it is 1 so this will not affect the derivative
surf(x,y,V1);
title('Plot for Electric Field');
xlabel('x')
ylabel('y')
zlabel('Electric Field(V/m)')
