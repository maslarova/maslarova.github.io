clear all; % vycisti ulozene promenne

% SKALAR
s = 3

% SKALAR bez vypisu
sb = 3;

% VEKTOR sloupcovy
c = [4; 5; 6]

% VEKTOR radkovy (2 varianty)
r = [4, 5, 6]
r = [4 5 6]

% TRANSPOZICE sloupcoveho vektoru
cT = [4; 5; 6]'

% TRANSPOZICE radkoveho vektoru
rT = [4, 5, 6]'

% TRANSPOZICE radkoveho vektoru v ulozeny promenny
rT = r'

% PRAZDNY VEKTOR
w = []

% VYBER 2. PRVKU VEKTORY c
p = c(2)

% DELKA (pocet prvku) VEKTORU c 
l = length(c)

% VYTVARENI VEKTORU pomoci :
c1 = 1:1:5 %posloupnost [1,2,3,4,5]
c2 = 1:-3:-6 %posloupnost [1,-2,-5]
c3 = 1:5 %posloupnost [1,2,3,4,5]

%MATICE M
M = [1, 2, 3; 4, 5, 6; 7, 8, 9]

% PRIDANI RADKU DO MATICE M
M = [M; [10,11,12]]

% PRIDANI SLOUPCU DO MATICE M
M = [M, [13;14;15;16]]

% ROZMERY MATICE M
sM = size(M)

% VYBER PRVKU v 3. radku a 2. sloupci M
p1 = M(3,2)

% VYBER 3. radku z matice M
v1 = M(3,:)

% VYBER 2. sloupcu z matice M
v2 = M(:,2)

% Transformace matice do sloupcoveho vektoru
vM = M(:)

% Prirazeni hodnoty "18" do prvku v 3. radku a 2. sloupci M
M(3,2) = 18

% Zmena celeho 4. radku v matici M
M(4,:) = [5,7,8,3]

% Vymazani celeho 1. radku v matici M
M(1,:) = []

% Ulozeni posledniho sloupce M do promenne lr
lr = M(:,end)

% Jednickova matice s rozmery 3x4
Mo = ones(3,4)

% Nulova matice s rozmery 4x4
Mz = zeros(4)

% Diagonalni jednickova matice s rozmery 3x3
Md = eye(3)

%Scitani matic M a Mz
sumM = M+Mo

%Odcitani Mz od M
disM = M-Mo

%Nasobeni M a Mz'
mulM=M*Mo'

%Nasobeni M a Mz po prvcich
mulM=M.*Mo
%Poznamka: Md^2 = Md*Md a Md.^2 = Md.*Md

%Matice inverzni diag. matici 5x5
inv(3*eye(5))

%Deleni matice M skalarem s
M/s

%Deleni M matici jednotkovou matici po prvcich
M./ones(3,4)

%Maximum vektoru w
w=[3,-1,-8]
max(w)

%Maximum absolutni hodnoty vektoru w
max(abs(w))

%Najmensi prvek v kazdem sloupci matice M 
min(M)

