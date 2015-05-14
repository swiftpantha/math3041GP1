
%The first array specifies the interval of t and the second array 
%specifies the initial conditions
clear
%[t,y] = ode45('de',[0 4], [1.0 1.0]);

[t,y] = ode45('pendulumcats',[0 1], [100 0]);

plot(t,y(:,1),'-');
xlabel('time');
ylabel('y_{1}(t)');
title('\theta (t)');

figure;
plot(t,y(:,2),'-');
xlabel('time');
ylabel('y_{2}(t)');
title('d \theta / dt (t)');


%Looking for Bistability it's probably helpgul to have a nice phase
%portrait so this code draws a phase portrait for us.

options=odeset('OutputFcn','odephas2');


 
vectfield('pendulumcats',-50:1:50,-50:1:50)
hold on
for y20=0:0.3:2.7
[ts,ys] = ode45('pendulumcats',[0,10],[0;y20]);
plot(ys(:,1),ys(:,2))
end
hold off

