%Pre postupne spustanie sekcii kliknite na prislusny riadok a stlacte Run Section
%% ULOHA1 
matice;
%% ULOHA 2
A'*B
%Nie je mozne nasobit po prvkoch, nemaju rovnaku velkost
%% ULOHA 3
W = [A(1,3);B(2,2);X(4)]
%% ULOHA 4
Y = X(end:-1:1)
Y = fliplr(X)
%% ULOHA 5
C = [A,B,X(end-2:1:end)']
%% ULOHA 6
X.^2
X*X'
%X^2 nefunguje, lebo je to klasicke nasobenie matic X a X
% X.*X' nefunguje, i ked maju rovnaky pocet prvkov, ich rozmery su ine
