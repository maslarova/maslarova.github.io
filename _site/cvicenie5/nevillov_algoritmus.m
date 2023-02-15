x = -1;
X = [1 2 -4];
Y = [3 -5 4];
L = 0;
n = length(X);
P = NaN(n,n);

for i = 1:n
  P(i,i) = Y(i);
end

for k=1:n-1
  for j = k+1:n
    i=j-k;
      P(i,j) = ((x-X(j))*P(i,j-1)-(x-X(i))*P(i+1,j))/(X(i)-X(j));
  end
end
P(1,3)
