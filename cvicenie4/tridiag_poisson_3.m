clear all;
close all;
x0   = -1;
xn   = 1;
n    = 3;
h    = (xn-x0)/(n+1);

a    = [0,-0.5,-0.5];
b    = [1,1,1];
c    = [-0.5,-0.5,0];
d    = [h*h;h*h;h*h];

for k =2:n
    mult =  a(k)/b(k-1);
    b(k) = b(k)-c(k-1)*mult;
    d(k) = d(k)-d(k-1)*mult;
end

phi(n) = d(n)/b(n);
for k=n-1:-1:1
    phi(k)= (-c(k)*phi(k+1)+d(k))/b(k);
end

x   = -1:h:1;
phi = [0,phi,0];

plot(x,phi,'o')
hold on;
x   = -1:0.0001:1;
plot(x,1-x.*x)
legend('Numerical','Analytical')
xlabel('x')
ylabel('\phi(x)')