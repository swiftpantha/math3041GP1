function dEqs = singleGeneDE(t,params)

%Implementation of Equation one as described in
%https://lifeware.inria.fr/~soliman/publi/KSF09jtb.pdf

repRate = 10;
whiteOpaqueSwitch = 10;
OpaqueWhiteSwitch = 1;
pop = params(1) + params(2);
 
dEqs = ones(2,1);

%Population of Opaque
dEqs(1) = - (repRate * params(1) * params(2))/pop - OpaqueWhiteSwitch * params(1)  + whiteOpaqueSwitch * params(2);

%Population of White
dEqs(2) = (repRate * params(1) * params(2))/pop  + OpaqueWhiteSwitch * params(1) - whiteOpaqueSwitch * params(2);