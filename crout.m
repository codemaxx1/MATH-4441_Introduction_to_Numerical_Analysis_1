  
A = [ 1 2 3;
    4 1 5;
    3 2 6
    ];
crdout(A)


function [] = crdout(A)
        
         %size of matrix
         n = length(A);
        
        %put first row of A into lower matrix
        L(:, 1) = A(:, 1);
        
        %put pivots of 1 into Upper matrix
        for i = 1:n
            U(i, i) = 1;
        end
        
        %scale upper matrix
        U(1,:) = A(1, :) / L(1, 1);

        %iterate through rows
        for i = 2:n
        	%
             for j = 2:i
                  %assemble lower matrix
                  L(i, j) = A(i, j) - L(i, 1:1:j - 1) * U(1:1:j - 1, j);
            end
            
            for j = i + 1:n
            	   %assemble upper matrix 
                    U(i, j) = (A(i, j) - L(i, 1:1:i - 1) * U(1:1:i - 1, j)) / L(i, i);
            end
        end
        
        L
        U
        
end