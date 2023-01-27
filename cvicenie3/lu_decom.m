A = [1,2,4;3,8,14;2,6,13]; %reg. matica A
n = size(A);  %velkost matice je nxn
L = eye(n);   %predalokujem dolnu troj.maticu - jednotky na diagonale
U = zeros(n); %predalokujem hornu troj.maticu - nulova matica

for i = 1 : n %iterujem po riadkoch
    
    %V riadku i ukladam prvky do stlpcov j=i,i+1,..,n matice U  
    for j = i : n
        sumU = 0;
        for k=1:i-1
            sumU = sumU + L(i,k)*U(k,j);
        end
        U(i,j) = A(i,j) - sumU;
    end
    
    if i == n % Posledny riadok matice L sme uz pocitali v predoslom cykle
        break
    else
        % V riadku i+1 ukladam prvky do stlpcov j=1,2,..i matice L  
        for j = 1: i 
            sumL = 0;
            for k=1:j-1
                sumL = sumL+L(i+1,k)*U(k,j);
            end
            L(i+1,j)=(A(i+1,j) - sumL)/U(j,j);
        end
    end
    
end

L,U %vypisem vysledok



