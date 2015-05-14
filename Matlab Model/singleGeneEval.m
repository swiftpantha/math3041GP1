
%The first array specifies the interval of t and the second array 
%specifies the initial conditions
clear
%[t,y] = ode45('de',[0 4], [1.0 1.0]);


opaque = 10;
white = 0;

[t,y] = ode45('singleGeneDE',[0 5], [opaque white]);

%The first array specifies the interval of t and the second array 
%specifies the initial conditions
clear
%[t,y] = ode45('de',[0 4], [1.0 1.0]);


opaque = 5;
white = 5;

[t,y] = ode45('singleGeneDE',[0 5], [opaque white]);

figure;
plot(t,y(:,1),t,y(:,2),'-');
xlabel('time');
ylabel('Amount');
title('White vs Opaque');


