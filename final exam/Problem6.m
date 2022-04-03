% created by Nicholas Garrett
%6

%%%
% Develop an efficient algorithm to find the LU decomposition of A, assuming
% that no pivoting is needed. Implement your algorithm in a MATLAB subroutine with
% testing examples. You may use the command A = hess(rand(n))% to generate a random
% n × n lower Hessenberg matrix.
%%%

n = 4;

% generate the matrix and vector
A = hess(rand(n))'
b = rand(n,1)


hessianLUdecomp(A, b);

%x =A\b % calculation of x compared to calculation of x through reverse
%substitiution to determine correctness

function [L,U] = hessianLUdecomp(A,b)
    n = length(b);
    x = zeros(n,1);
    
    for k = 1:n-1
        
          for i=k+1:n
               diffVal = A(i,k) / A(k,k);
               
               % zero out the cleared elements of the matrix
               %for l = 1:k
               %    A(i,k) = 0
               %end

               
               for j=k+1:n
                    
                   % update A
                    A(i,j) = A(i,j)-diffVal*A(k,j)
                 
                    % only adjust for hte iterations needed
                    if j == k+2
                        fprintf("cought\n")
                        break 
                    end
                end
               
               % update b
               b(i) = b(i)-diffVal*b(k);
               
          end
    end

    L = tril(A) - diag(diag(triu(A))-1) 
    U = triu(A)



end