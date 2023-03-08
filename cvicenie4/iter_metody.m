clear all; close all;

n                       = 10; %pocet iteraci
A                       = [5,-2,3; -3,9,1; 2,-1,-7];
b                       = [-1;2;3]; %prava strana
matlab_reseni           = A\b;

L                       = tril(A,-1); %prvky pod diagonalou, inak nuly
U                       = triu(A,1);  %prvky nad diagonalou, inak nuly
D                       = A-L-U;      %prvky na diagonale, inak nuly

%Pocitame rozdil od reseni Matlabu
chybaJacobi             = NaN(n,1);
chybaGS                 = NaN(n,1);
chybaSR                 = NaN(n,1);
chybaSR_opt             = NaN(n,1);

% zvolime uvodni odhad reseni x (0-ta iterace)
x0                      = zeros(length(b),1);

%JACOBI
B                       = %DOPLNTE
c                       = %DOPLNTE
x                       = x0;
for i=1:n
        x               = %DOPLNTE
        chybaJacobi(i)  = norm(x-matlab_reseni);
end

% GAUSS-SEIDEL
B                       = %DOPLNTE
c                       = %DOPLNTE
x                       = x0;
for i=1:n
        x               = %DOPLNTE
        chybaGS(i)      = norm(x-matlab_reseni);
end


% SUPERRELAXACE + GAUSS-SEIDEL
omega                   = 0.8; %hodnota medzi (0,2)
x                       = x0;
for i = 1:n
        xkp1            = B*x+c;
        x               = x+omega*(xkp1-x);
        chybaSR(i)      = norm(x-matlab_reseni);
end

    
% SUPERRELAXACE s opt. omega
r                       = %DOPLNTE spektralni polomer matice B
omega                   = %DOPLNTE vzorec pre optimalne omega
x                       = x0;
for i = 1:n
        xkp1            = B*x+c;
        x               = x+omega*(xkp1-x);
        chybaSR_opt(i)  = norm(x-matlab_reseni);
end  


% VYKRESLIME DO GRAFU
osaX = 1:n;
plot(osaX,chybaJacobi,osaX,chybaGS, ...
    osaX,chybaSR,osaX,chybaSR_opt);
% zobrazime legendu
legend('Jacobi','Gauss-Seidel','Superrelaxace', 'SOR s volbou omega');
% nastavime osu Y jako logaritmickou
set(gca,'YScale','log');
xlabel('Pocet iteraci')
ylabel('Chyba')
