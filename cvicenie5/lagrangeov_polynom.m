x = -1;
X = [1 2 -4];
Y = [3 -5 4];
n = length(X);
L = 0;

for j = 1:n
   l = 1; 
   for m = 1:n
       if m~=j
           l = l * (x-X(m))/(X(j)-X(m));
       end
   end
   L = L + Y(j)*l;   
end
 
L
