
%The first array specifies the interval of t and the second array 
%specifies the initial conditions
clear
%[t,y] = ode45('de',[0 4], [1.0 1.0]);
%%
[t,y] = ode45('wor1Feedback',[0 20], [0.1 0 1 0 0.1 0]);

%%
%Define our function        
n=5;
f = @(x) x.^n ./(2^n + x.^n);


figure;
plot(y(:,2),f(y(:,2)),'-');
xlabel('x2');
ylabel('f(x2)');
title('Graph of Production Rate vs Quantity of Gene');



%%
plot(t,y(:,1),'-');
xlabel('time');
ylabel('WOR2');
title('WOR2 / dt');

figure;
plot(t,y(:,3),'-');
xlabel('time');
ylabel('WOR1');
title('WOR1 / dt');

figure;
plot(t,y(:,5),'-');
xlabel('time');
ylabel('EFG');
title('EFG1 / dt');



%%

        figure;
        plot(y(:,2),f(y(:,2)),'-');
        xlabel('x2');
        ylabel('f(x2)');
        title('Graph of Production Rate vs Quantity of Gene');