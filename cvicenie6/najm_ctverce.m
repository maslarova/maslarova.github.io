%% Linearna funkcia
x = [0, 1, 3, 5, 6];
y = [5, 3, 3, 2, 1];
n = length(x);

M = [sum(x.^2),sum(x);sum(x),n];
z = [sum(x.*y);sum(y)];

koeficienty = M\z;
a= koeficienty(1);
b= koeficienty(2);

figure;
scatter(x,y,50,'filled','black')
hold on;
plot(x,a*x+b,'linewidth',2,'color','r')

ylim([0,6])
xlim([0,6])
xlabel('x')
ylabel('y')
title('f(x)=ax+b')

%% Kvadraticka funkcia
x = [-0.6 -0.2 0.2 0.6];
y = [5 3 5 8];


M = [sum(x.^4),sum(x.^3),sum(x.^2);sum(x.^3),sum(x.^2),sum(x);sum(x.^2),sum(x),n];
z = [sum(x.^2.*y);sum(x.*y);sum(y)];

koeficienty = M\z;
a = koeficienty(1);
b = koeficienty(2);
c = koeficienty(3);

figure;
scatter(x,y,50,'filled','black');
hold on;
x = -1:0.01:1;
plot(x, a*x.^2+b*x+c,'linewidth',2,'color','r');

xlabel('x');
ylabel('y');
title('f(x)=ax+b');
