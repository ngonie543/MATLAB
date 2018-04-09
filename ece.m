
 % Honor code

 %% Initiatlize
 clear; figure(1); clf

%% Define unit step and ramp
 ustep = @(in) (1.0).*(in>=0);
 uramp = @(in) (in).*(in>=0);
 %% Define x in terms of steps and ramps

 x = @(t) ustep(t)-uramp(t-1)+uramp(t-2);
 y = @(t) ustep(t-1)-ustep(t-3);
 z = @(t) 2*ustep(t-2)- 2*uramp(t-3)+ 2.*uramp(t-4);
 x1 = @(t) uramp(t+2)-uramp(t+1)-ustep(t); %%+uramp(t-2);
 y1 =@(t) ustep(t+3)-ustep(t+1);
 z1 =@(t) 2*uramp(t+4)-2*uramp(t+3)-2*ustep(t+2);
 %% Plot
 t = linspace(-5, 6, 1e4);
 plot(t, z1(t));
xlabel('t');
 ylabel('x');
 title('Figure P1.21 (mrg)');
 axis([-5 5 -2 3])
 grid on