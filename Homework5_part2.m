%created by Nicholas Garrett
%
%Solve for vector x in Ax=b, given square matrix A and vector b
%

T = [
    ]

%initial variables 
A = [   -7 -6 -12; 
        5 5 7; 
        1 0 4]; %matrix A, an example non-singular matrix

b = [1; 11; 1]; %result b

%solve for the vector x
x = LU_Solver(L, U, T, A,b)


 
function [x] = LU_Solver(L, U, T, A, b)
    %size of A
    n = length(A)
    
    
     
   
end


