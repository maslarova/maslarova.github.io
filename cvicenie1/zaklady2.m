clear all;

% Priklad podminky if
num = 3;

if num>3
    disp('Cislo je vetsi nez 3')
elseif num<3
    disp('Cislo je mensi nez 3')
else num=3
    disp('Cislo je rovne 3')
end

% Priklad cyklu for
v=[1,2,3,4,5,6,7,8];
s=0;
for i = 1:length(v)
    s=v(i)+s;
end
s %Suma prvkov vektoru v t.j. sum(v)
sum(v)

% Priklad cyklu while
k=0;
while k<45
    k=k+2;
end
k


% Priklady funkci
printSum(3,4)
p = saveSum(5,6); %ulozim vystup funkce do promenne p
p
printSum([1,2;3,4],ones(2)) % suma 2 matic

function [] = printSum(u,v)
    u+v %funkce nic nevraci, jenom vypise sumu vstupu u,v
end

function m = saveSum(u,v)
    m = u+v; %funkce vraci sumu vstupu u,v
end       