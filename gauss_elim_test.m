%created by Nicholas Garrett
%
%simple non-pivoting gaussian elimination
%


%initial variables 
A = [  1 2 -3 4;
        65 6 7 8;
        9 1 11 12;
        13 14 15 16]; %matrix A, an example non-singular matrix



%solve for the vector x
LU_Solver(A,b)

 
function [] = LU_Solver(A,b)
    %size of A
    n = length(A)
    
    
    for i = 2:n  
        for j = 1:i-1
            % perform row reduction
                differenceMultiply = (A(i,j)/A(j,j))
                A(i,:) = A(i,:) - differenceMultiply*A(j,:)  
        end 
    end
    
    % set L to the edited matrix A, this is not actually necessary
    L(:,:) = A(:,:)
                    
    %get transopose of L to get U
    %U = L'
    for i = 1:n
        for j = 1:n
            U(i,j) = L(j,i);
        end
    end
    U
end


