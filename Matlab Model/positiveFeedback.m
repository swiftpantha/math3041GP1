function dA_star = positiveFeedback(t,A_star)

%Implementation of Equation one as described in
%https://mcb.berkeley.edu/courses/mcb137/exercises/A%20simple%20positive%20feedback.pdf

% Stimulus between 0 and 1 --- Stimulus is possibly time
%stimulus = 1;

% The total amount of A
A_tot = 1;

% The feedback strength between 0 and .12
f = 10;

%K is the effector concentration for half max response
K = 1;

%K_inact is the inactivation rate
K_inact = 0.01;

%The Hill coefficient
n = 5;

% Construct Matrix of Differential Equations
%dA_star = zeros(1,1);

%Calculate the concentration of A_star == White / Opaque
dA_star = (t * (A_tot - A_star)) +... %Gene replication doubling each time? 
           f * (A_star)^n/(K^n + A_star^n)... %Think of this as 
            - (K_inact * A_star); % Think of this as the degradation 

