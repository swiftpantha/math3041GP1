function dEqs = wor1Feedback(t,y)

%Implementation of Equation one as described in
%https://lifeware.inria.fr/~soliman/publi/KSF09jtb.pdf

%No clue where these should be
bassalRates = [0.01 0.01 0.01];

%Contains [a1 a2 a3] -- Paper says a3 \in [2, 7]
activationRates = [0.1 0.1 3];

%Contains [d1 d2 d3] as below. Paper says a2 = 2 for bistability
degradationRates = [0.01 2 0.01]; 

%Hills coefficient 5 is from a previous paper on Bistability 
n = 5;

%Poof an array into existence and fill it with some juicy DE's
dEqs = ones(6,1);


%This models WOR2 -- NEGATIVE ONE FEEDBACK
dEqs(1) = bassalRates(1) + activationRates(1)*y(2)^n/(1+y(2)^n)...
    - degradationRates(1) * y(1);

dEqs(2) = y(1);


%This models WOR1 -- POSITIVE FEEDBACK SIDE
dEqs(3) = bassalRates(2) + activationRates(2)*y(1)^n/(1+y(1)^n)...
    + activationRates(3) / (1+y(3)^n) - degradationRates(2) * y(2);

dEqs(4) = y(2);


%This models EFG1 -- NEGATIVE TWO FEEDBACK
dEqs(5) = bassalRates(3) + activationRates(3)/(1+y(2)^n)...
    - degradationRates(3) * y(3);

dEqs(6) = y(3);

