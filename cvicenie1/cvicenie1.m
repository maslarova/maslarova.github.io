%Pre postupne spustanie sekcii kliknite na prislusny riadok a stlacte Run Section
%% ULOHA1 
matice;
%% ULOHA 2
A'*B
%Nie je mozne nasobit po prvkoch, nemaju rovnaky rozmer
%% ULOHA 3
W = [A(1,3);B(2,2);X(4)]
%% ULOHA 4
Y = X(end:-1:1)
Y = fliplr(X)
%% ULOHA 5
C = [A,B,X(end-2:1:end)']
%% ULOHA 6
X.^2
X*X'
%X^2 nefunguje, lebo je to klasicke nasobenie matic X a X
% X.*X' nefunguje, i ked maju rovnaky pocet prvkov, ich rozmery su ine
%% ULOHA 7
max(A(3,:))
max(A(:,2))
max(max(A))
%% ULOHA 8
%vizfaktorial
%Test s matlabovoskou zabudovanou funkciou factorial pre cislo 5:
if(faktorial(5) == factorial (5))
  fprintf("TrueTruth\n")
end 
%%ULOHA 9
thirdPower(A)
thirdPower(X)
thirdPower(Z)
%%ULOHA 10
d=-5:0.01:5;
figure;
plot(d,exp(-d));
%%ULOHA 11
M=5*rand(2,10);
figure;
scatter(M(1,:),M(2,:));
%%ULOHA 12
a= 0;b= 8*pi;
figure;
n= 10;
plotGoniometrickaFunkce(a,b,n)
hold on;
n=100;
plotGoniometrickaFunkce(a,b,5)
hold on;
n=10000;
plotGoniometrickaFunkce(a,b,n)
legend('5dielikov','100dielikov','10000 dielikov')%popisky k legende
set(gca,'xTick',0:2*pi:8*pi,'xTickLabel',{'0','2\pi','4\pi','6\pi','8\pi'})%nastavi v ktore body budu vyznacene a ako budu oznacena
set(gca,'Fontsize',18,'Linewidth',1.5)%Nastavenie velkosti pisma a hrubky ohranicenie grafu 
xlabel('x');ylabel('y');%oznaci osi
legend('Location','eastoutside')%Legenda bude vpravo od grafu
legend('boxoff') %Legenda nebude ohranicena boxom
xlim([0,8*pi]) %Hranicex-ovej osi
%%ULOHA 13
fprintf('Helloworld!\n')

function f = faktorial(n) 
  if mod(n,1)==0 && n>0 
    f=n; 
    for i=n-1:-1:2 
      f=f*i; 
    end 
  else fprintf('Vstupnie je prirodzene cislo\n'); 
  end
end


function t=thirdPower(A)
  t=A.^3;
end


function[]=plotGoniometrickaFunkce(a,b,n)
  plot(a:(b-a)/n:b,goniometrickaFunkce(a,b,n),'linewidth',2)
end

function f=goniometrickaFunkce(a,b,n)
  range = a:(b-a)/n:b
  f = sin(range).^2+cos(2*range)
end


