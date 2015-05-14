function dy = pendulumcats(t,y)
% The initial amount of protein

% The probabily of protein sythesis from protein
alpha = 0.9;

% The complementary probability of protein degradation
beta = (1-alpha);

dy = zeros(2,1);

%The total amount of protein at t
dy(1) = y(1) + y(1)*(alpha*(y(1)/(y(2)+y(1))));

%The total degredation at t
dy(2) = y(2) + y(1)*(1-(alpha*(y(1)/(y(2)+y(1)))));