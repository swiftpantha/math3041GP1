

%%
[x1, x2] = meshgrid(0:0.05:2, -1:0.05:3);
x1dot = 8 * f(x2) - 2*x1;
x2dot = 4 * x1 - 3*x2;
quiver(x1,x2,x1dot,x2dot)
%%


n=3;

f = @(x) x.^n ./(2^n + x.^n);

x_1 = 0:0.1:7;
x_2 = 0:0.1:7;


%Fill out the production rate constants
Production_Rate_Constants = ones(2,1);
Production_Rate_Constants(1) = 2.5;
Production_Rate_Constants(2) = 2;

%Fill out the degredation rate constants
Degredation_Rate_Constants = ones(2,1);
Degredation_Rate_Constants(1) = 1;
Degredation_Rate_Constants(2) = 1;


x1_0 = Production_Rate_Constants(1)/Degredation_Rate_Constants(1)* f(x_2);
x2_0 = Degredation_Rate_Constants(2)/Production_Rate_Constants(2)*x_2;

plot(x_2, x1_0, x_2, x2_0)
        xlabel('x2');
        ylabel('x1');
        title('Lines are where derivatives are 0');
%%

%THIS PLOTS THE PHASE PORTRAIT FOR UNSTABLE STATIONARY POINT
figure;
[x1, x2] = meshgrid(0.65:0.01:0.85, 1.4:0.01:1.6);
x1dot = Production_Rate_Constants(1)* f(x2) - Degredation_Rate_Constants(1)*x1;
x2dot = Production_Rate_Constants(2)*x1 - Degredation_Rate_Constants(2)*x2;
quiver(x2,x1,1000*x2dot, 1000*x1dot)


%%

%THIS PLOTS THE PHASE PORTRAIT FOR UNSTABLE STATIONARY POINT
figure;
[x1, x2] = meshgrid(0:0.01:0.2, 0:0.01:0.2);
x1dot = Production_Rate_Constants(1)* f(x2) - Degredation_Rate_Constants(1)*x1;
x2dot = Production_Rate_Constants(2)*x1 - Degredation_Rate_Constants(2)*x2;
quiver(x2,x1,1000*x2dot, 1000*x1dot)

%%

%THIS PLOTS THE PHASE PORTRAIT FOR UNSTABLE STATIONARY POINT
figure;
[x1, x2] = meshgrid(2:0.01:2.5, 4.5:0.01:5);
x1dot = Production_Rate_Constants(1)* f(x2) - Degredation_Rate_Constants(1)*x1;
x2dot = Production_Rate_Constants(2)*x1 - Degredation_Rate_Constants(2)*x2;
quiver(x2,x1,1000000*x2dot, 1000000*x1dot)


