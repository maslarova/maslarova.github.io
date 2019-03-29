A=[3 4 5 1 6 2];
n=length(A);

for i=2:n
   j = i-1;
   aktualniHodnota = A(i);
   
   while (j>0) && (aktualniHodnota<A(j))
     A(j+1) = A(j); 
     A(j)   = aktualniHodnota;
      j      = j-1;
   end   
   
   %Iny sposob ako zapisat vnutorny cyklus
   %{
   for j=i-1:-1:1
       if A(j)<aktualniHodnota
           break;
       end
       A(j+1)=A(j);
       A(j)   = aktualniHodnota;
   end   
   %}
   
end

A