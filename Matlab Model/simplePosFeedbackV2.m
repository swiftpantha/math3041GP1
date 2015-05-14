function [equation] = simplePosFeedback(t,x)


equation  = ones(4,1);

n = 3;

%Fill out the production rate constants
Production_Rate_Constants = ones(2,1);
Production_Rate_Constants(1) = 2;
Production_Rate_Constants(2) = 2;

%Fill out the degredation rate constants
Degredation_Rate_Constants = ones(2,1);
Degredation_Rate_Constants(1) = 1;
Degredation_Rate_Constants(2) = 1;

%Rate Law Equation

f = @(x) x.^n ./(2^n + x.^n);

%Equation 1 is the mRNA concentration 
equation(1) = Production_Rate_Constants(1) * f(equation(4)) - Degredation_Rate_Constants(1)*equation(2);
equation(2) = x(1);


%Equation 2 is the protein concentration
equation(3) = Production_Rate_Constants(2)*equation(2) - Degredation_Rate_Constants(2)*(equation(4));
equation(4) = x(2);

%x1_0 = Production_Rate_Constants(1)/Degredation_Rate_Constants(1)*Rate_law;

%x2_0 = Degredation_Rate_Constants(2)/Production_Rate_Constants(2) * 

