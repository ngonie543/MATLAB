%%Justin Ndhlala

%%I have adhered to the Duke Community Standard in completing this
%%assignment. njn7



ustep=@(in) (1.0).*(in>=0);
uramp=@(in) (in).*(in>=0);

in=-3:3;
f=-ustep(in);
f2 = uramp(in);

plot(in,f), axis([-3 2 -2 3 ])

plot(in,f2), axis([-3 2 -2 3 ])

plot(in,f3), axis([-3 2 -2 3 ])



xlabel('t'),ylabel('ustep(t)'),grid on

xlabel('t'),ylabel('uramp(t)'),grid on
