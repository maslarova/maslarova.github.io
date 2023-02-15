n           = 100; %pocet iteracii
A           = [5 10 1; 2 7 3; 2 3 8];
origResenie = [1;2;3];

% Najdeme pravu stranu
b = A*origResenie;

% zvolime nahodny uvodni odhad 
x0 = rand(3,1);

% PROSTA ITERACE
B = eye(size(A))-A;
c = b;
x = x0;
    
for i=1:n
    x=B*x+c;
        chybaProstaIterace(i) = norm(x-origResenie); %odchylka od skutocneho riesenia
end

% JACOBI
L = tril(A,-1); %prvky pod diagonalou, inak nuly
U = triu(A,1);  %prvky nad diagonalou, inak nuly
D = A-L-U;      %prvky na diagonale, inak nuly

B = -inv(D)*(L+U);
c = inv(D)*b;

x=x0;
for i=1:n
        x=B*x+c;
        chybaJacobi(i) = norm(x-origResenie);
end

% GAUSS-SEIDEL
B = -inv(D+L)*U
c = inv(D+L)*b

x=x0;
for i=1:n
        x=B*x+c;
        chybaGaussSeidel(i) = norm(x-origResenie);
end



% SUPERRELAXACE + GAUSS-SEIDEL
omega=1.6;

x=x0;
for i=1:n
        xkp1= B*x+c;
        x=x+omega*(xkp1-x)
        chybaSuperRelaxace(i)=norm(x-origResenie);
end

    
% SUPERRELAXACE s opt. omega
r     = max(abs(eig(B)));%DOPLNTE spektralni polomer matice B
omega = 2/(1+sqrt(1-r^2));%DOPLNTE vzorec pre optimalne omega
    
x=x0;
for i=1:n
        xkp1= B*x+c;
        x=x+omega*(xkp1-x)
        chybaSuperRelaxaceOmega(i)=norm(x-origResenie);
end  


% ZOBRAZIME
osaX=1:n;
plot(osaX,chybaProstaIterace,osaX,chybaJacobi,osaX,chybaGaussSeidel, ...
    osaX,chybaSuperRelaxace,osaX,chybaSuperRelaxaceOmega);
% zobrazime legendu
legend('Prosta iterace','Jacobi','Gauss-Seidel','Superrelaxace', 'SOR s volbou omega');
% nastavime osu Y jako logaritmickou
set(gca,'YScale','log');


