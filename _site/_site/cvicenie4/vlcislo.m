%Riesime ciastocny problem vl. cisel - hladame maximalne vlastne cislo v absolutnej hodnote matice A

% 1.Zadame si maticu A
A = [4,0,-10;0,3.7,-8.8; -7.85, 2.6, 3];

% 2. Odhadneme vlastny vektor nenulovym vektorom
v = [1;2;1];

%DOPLNTE:
% 3. Pre pocet iteracii n=50 odhadnite vlastne cislo lambda, kt. je maximalne v abs. hodnote
% Hint: norm je prikaz v Matlabe na normu


% 4. Vypiseme odhad najvacsieho vlastniho cisla v abs. hodnote
lambda

% Pre porovnanie vypiseme Matlabovsky vysledok
lambdaMatlab = max(abs(eig(A)))