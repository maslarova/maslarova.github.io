clear all;
close all;
x0   = -1;
xn   = 1;
n    = 100;
h    = (xn-x0)/(n+1);

a    = -0.5*ones(n,1);
a(1) = NaN;
c    = -0.5*ones(n,1);
c(n) = NaN;
b    = ones(n,1);
d    = ones(n,1)*h*h;
phi  = NaN(1,n);


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