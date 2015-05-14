
        %The first array specifies the interval of t and the second array 
        %specifies the initial conditions
        clear
        %[t,y] = ode45('de',[0 4], [1.0 1.0]);


        [t,y] = ode45('simplePosFeedback',[0 15], [1, 0, 1, 1]);

        
      

        n=3;
        f = @(x) x.^n ./(2^n + x.^n);
%%

        figure;
        plot(y(:,2),f(y(:,2)),'-');
        xlabel('x2');
        ylabel('f(x2)');
        title('Graph of Production Rate vs Quantity of Gene');
%%
        
        figure;
        plot(y(:,2),y(:,4),'-');
        xlabel('x1');
        ylabel('dx1/dt');
        title('White vs Opaque');

        
        
%%
        figure;
        plot(y(:,2),y(:,1), y(:,4), y(:,3),'-');
        xlabel('x1');
        ylabel('dx1/dt');
        title('White vs Opaque');

