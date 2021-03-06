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
title('f(x)=ax^2+bx+c');
