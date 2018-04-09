ustep=@(in) (1.0).*(in>=0);
uramp=@(in) (in).*(in>=0);


t = linspace(-2,5,1e5);
x1(t) = ustep(t);
subplot(3,2,1),plot(t,x1(t),'k-'), axis([-2 5 -3 3 ])
xlabel('t'),ylabel('x_1(t)'),grid on
subplot(3,2,2),plot(t,y1(t),'k-'), axis ([-2 5 -3 3 ])
xlabel('t'), ylabel('y_1(t)'),grid on

