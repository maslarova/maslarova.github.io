%Riesime sustavu A*x=y s maticou A v trojuholnikovom tvare
A = [8,-1,-2;0,55,-10;0,0,1]; %Matica v trojuholnikovom tvare
y = [0,80,3]'; %Vektor y

x = NaN(3,1); %Zostrojime vektor x s 3 prvkami nedefinovanych hodnot
% Hodi sa to na predalokovanie, inak by sme museli velkost vektora stale
% rozsirovat, co je nevyhodne
n = length(x); %dlzka vektoru x

%DOPLNTE telo cyklu, ktory postupne pocita zlozky vektoru x3,x2,x1
for k = length(x):-1:1 %Iterujeme od posledneho prvku vektoru

end    
    
x % Vypise x
linsolve(A,y) %Matlabovske riesenie