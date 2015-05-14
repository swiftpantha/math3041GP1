
%The first array specifies the interval of t and the second array 
%specifies the initial conditions
clear
%[t,y] = ode45('de',[0 4], [1.0 1.0]);

[t,y] = ode45('positiveFeedback',[0 10], 0);

plot(t,y,'-');
xlabel('time');
ylabel('A^*');
title('\theta (t)');


