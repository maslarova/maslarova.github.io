% Definujeme si prazdne vektory, do nich budeme ukladat vysledky
odhad_1 = [];   % Aproximacia derivacie 1. radu
odhad_2 = [];   % Aproximacia derivacie 2.radu
h_arr   = [];   % Dlzka kroku h

%Pocitajme hodnotu derivacie v konkretnom bode x1=pi/6
x1    = pi/6;
% Vypočítajme analytickú hodnotu derivácie v bode pi/6
deriv = df(x1);
%Zacnime s dlzkou kroku pi
h1    = pi;

% Budeme pocitat aproximacie derivacii pre rozne dlzky h
% Krok budeme postupne zmensovat
% Pre kazde h pocitame odchylku aproximacie od skutocnej hodnoty
while h1 > 1e-15   %Cyklus zastavime ak h bude mensie ako 1e-15            
    odhad_1 = [odhad_1 df_n1(x1,h1)]; % 1. rad
    odhad_2 = [odhad_2 df_n2(x1,h1)]; % 2. rad
    h_arr   = [h_arr h1];    
    h1      = h1/1.1; % zmensime krok v kazdej iteracii
end

p1 = loglog(h_arr,abs( (odhad_1-deriv)./deriv ),'r-');
hold on;
p2 = loglog(h_arr,abs( (odhad_2-deriv)./deriv ),'g-');
legend([p1 p2], {'Prvy rad aproximacie' 'Druhy rad aproximacie'});
xlabel('Dlzka kroku h')
ylabel('Chyba')
hold off;

function f = f(x) 
  f = sin(x); % zadana funkcia
end

function df = df(x)
  df = cos(x); % zname analyticke vyjadrenie derivacie
end

function df = df_n1(x,h) % odhad derivace metodou 1. radu
  df = ( f(x+h)-f(x) ) / h; 
end

function df = df_n2(x,h) % odhad derivace metodou 2. radu
  df = ( f(x+h/2)-f(x-h/2) ) / h;
end
