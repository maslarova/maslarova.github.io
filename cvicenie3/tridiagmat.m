function tridiagmat

l=load('M3D.dat');

n = size(l,1); % pocet radku vstupniho souboru

c = l(:,1); % pod diagonalou
a = l(:,2); % diagonala
b = l(:,3); % nad diagonalou
f = l(:,4); % prava strana

x   = zeros(n+1,1); % vektor reseni

% pomocne vektory
rho = zeros(n+1,1); 
mu  = zeros(n+1,1); 

for i = 1 : n   % primy beh
    mu(i+1)  = -b(i) / ( c(i)*mu(i) + a(i) );
    rho(i+1) = ( f(i) - c(i)*rho(i) ) / ( c(i)*mu(i) + a(i) );
end

for i = n : -1 : 1   % zpetny beh
    x(i) = mu(i+1)*x(i+1) + rho(i+1);
end

x % vypis reseni

end