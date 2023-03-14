clear all;

a    = [0,0.4,0.4];
b    = [2,2,2];
c    = [0.3,0.3,0];
d    = [1,2,3];
n    = 3;

for k =2:n
    mult =  a(k)/b(k-1);
    b(k) = b(k)-c(k-1)*mult;
    d(k) = d(k)-d(k-1)*mult;
end

phi(n) = d(n)/b(n);
for k=n-1:-1:1
    phi(k)= (-c(k)*phi(k+1)+d(k))/b(k);
end

phi
A_m    = [2,0.3,0;0.4,2,0.3;0,0.4,2];
d_m    = [1;2;3];
A_m\d_m
