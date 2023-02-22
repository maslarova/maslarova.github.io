T          = 10;          % Dlzka casoveho useku
h          = 0.3;         % konecny casovy krok h (nahrada dt)
N          = round(T/dt); % Pocet krokov: Celkovy cas/dlzka kroku
			  % Zaokruhlene s "round" pre pripad, ze by N nebolo cele cislo

% Predalokacia vektorov pre rychlost
% (v Matlabe nie je nutne predalokovat, ale je to rychlejsie ako rozsirovat vektor)
v_Euler    = NaN(N,1); % Euler   
v_2step    = NaN(N,1); % Dvojkrokova
v_exact    = NaN(N,1); % Analyticke riesenie
t          = NaN(N,1); % cas

t(1)       = 0;          % Pociatocna podmienka pre cas
v_Euler(1) = 1;          % Pociatocna podmienka pre rychlost Eulerova
v_2step(1) = 1;          % Pociatocna podmienka pre rychlost 2-krokova
v_exact(1) = exp(-t(1)); % Analyticke riesenie pre t(1)

for i=2:N                  % Iterujeme cez pocet krokov N
   t(i) = t(i-1) + h;      % Casovy krok t(i)
   
   % Eulerova diferencna schema (v(t+h)-v(t))/h = -v(t)
   v_Euler(i) = %%%DOPLNTE%%%; Rychlost v case t(i) pre Eulerovu metodu
   
   %Dvojkrokova schema (centralna diferencia)
   if i==2
       v_2step(2) = exp(-t(1));
   else
       v_2step(i) = %%%DOPLNTE%%% Rychlost v case t(i) pre 2krokovu metodu
   end
   
   % Presne riesenie pre porovnanie
   v_exact(i) = exp(-t(i));    
end 

figure;
plot(t, v_Euler, 'g-');
hold on;
plot(t, v_2step, 'r');
hold on;
scatter(t, v_exact, 'b');
hold on;
legend('Eulerova metoda','Dvojkrokova metoda','Analyticke riesenie');
