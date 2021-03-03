%Riesime sustavu C*x=d s maticou C v trojuholnikovom tvare
C = [8,-1,-2;0,55,-10;0,0,1]; %Matica v trojuholnikovom tvare
d = [0,80,3]'; %Vektor d

x = NaN(3,1); %Zostrojime vektor x s 3 prvkami nedefinovanych hodnot
% Hodi sa to na predalokovanie, inak by sme museli velkost vektora stale
% rozsirovat, co je nevyhodne
n = length(x); %dlzka vektoru x

%Telo cyklu, ktory postupne pocita zlozky vektoru x3,x2,x1
for k = length(x):-1:1 %Iterujeme od posledneho prvku vektoru
    suma = 0;
    for j = k+1:length(x)
        suma = suma+x(j)*C(k,j);
    end    
    x(k) = (d(k)-suma)/C(k,k);
end    
    
x % Vypise x
C\d %Matlabovske riesenie
