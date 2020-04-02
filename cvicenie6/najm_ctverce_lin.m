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

