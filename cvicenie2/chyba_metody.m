function chyba_metody

function y = f(x) % Funkcia sin(x), ktoru budeme chciet derivovat
    y = sin(x);
end

%Analyticka derivacia sin(x) je cos(x)
function y = df(x)
    y = cos(x);
end

%Vypocet derivacie metodou 1. radu
function y = num1_df(x, h)
    y = ( f(x+h) - f(x) ) / h;
end

%Vypocet derivacie metodou 2. radu
function y = num2_df(x, h)
    y = ( f(x+h/2) - f(x-h/2) ) / h;
end


x = pi/6; %Hodnota, v ktorej vycislime derivaciu
h = x;   % Pociatocna hodnota kroku h

%Vytvorime si prazdne polia, do ktorych budeme neskor ukladat vysledky
der_a = []; % Hodnota derivace analyticky
der_1 = []; % Derivace metodou prvniho radu
der_2 = []; % Derivace metodou druheho radu
krok  = []; % Seznam pouzitych velikosti kroku

% Hledame hodnoty derivace v bode x v zavislosti na kroku h v cykle
while h > eps(1) %cyklus sa zastavi, ked bude mat h hodnotu strojoveho epsilon
    der_a = [der_a df(x)]; %Pridame hodnotu analytickej derivacie pre dany krok h
    der_1 = [der_1 num1_df(x,h)]; %Pridame derivaciu ziskanu metodou 1.radu pre dany krok h
    der_2 = [der_2 num2_df(x,h)]; %Pridame derivaciu ziskanu metodou 2 radu pre dany krok h
    krok  = [krok h]; % Ulozime si hodnotu h
    h = 0.9 * h; %krok postupne zmensujeme
end

%Vykreslenie zavislosti vypocitanych hodnot na velkosti kroku
figure
hold on
semilogx(krok, der_a, 'r', 'DisplayName', 'Analyticka hodnota')
semilogx(krok, der_1, 'g', 'DisplayName', 'Metoda prvniho radu')
semilogx(krok, der_2, 'b', 'DisplayName', 'Metoda druheho radu')
legend('Analyticka hodnota derivacie sin v bode \pi/6','Metoda prvniho radu','Metoda druheho radu')
xlabel('Dlzka kroku h')
hold off

%Vykreslenie zavislosti realtivnej chyby na kroku
figure
hold on
loglog(krok, abs((der_1-der_a)./der_a), 'g')
loglog(krok, abs((der_2-der_a)./der_a), 'b')
legend('Chyba metody 1. radu', 'Chyba metody 2. radu')
xlabel('Dlzka kroku h')
hold off

end