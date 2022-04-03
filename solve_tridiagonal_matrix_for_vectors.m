%created by Nicholas Garrett 10/10/2021

% matrix A
%A = [ 1 2 0 0 0;
%      2 3 4 0 0;
%      0 4 5 6 0;
%      0 0 7 8 9;
%      0 0 0 8 1];

a = [2; 4; 6; 9]; % vector a
b = [1; 3; 5; 8; 1]; % vector b
c = [0; 2; 4; 7; 8]; % vector c (the zero at position 1 is to map c_i to start at i = 2++)
d = [ 1; 3; 5; 3; 4]; % vector d


%solve for matrix
tridiagonalSolver_PivotVectors(a, b, c, d)


% tridiagonalSolver
% Solve a tridiagonal matrix of three pivot vectos (a, b, c) for x given right hand vector d.  
function x = tridiagonalSolver_PivotVectors(a,b,c,d)
    %rearrange the names for the vectors to allow equations to be simpler
    temp = b
    b = a
    a = temp

    n = size(a,1) 

    % a_1 = u_1
    % c_i = l_i * u_i-1           i = 2, ..., n 
    % a_i = u_i + l_i * b_i-1   i = 2, ..., n

    % value for x, which should be overwritten if everything goes according to plan
    x = "error, something went wrong";

    l = zeros(n, 1)
    U = zeros(n)

    U(1,1) = a(1)

    % iterate through the rows
    for i = 1:n
        
            if i+1 <= n
                %b_i diagonal
                U(i, i+1) = b(i)
            end

            if i > 1
                % find values in lower pivot vector and unit lower matrix
                
                % a_i=u_i + l_i * b_i-1
                l(i) = c(i) / U(i-1, i-1)
                
                %a_i = u_i _ l_i * b_i-1
                U(i,i) = a(i) - (l(i) * b(i-1))

                d(i) = d(i) -  (l(i) * d(i-1))
            end
            
        
    end


    %convert x from string to a zero array
    x = zeros(n,1);
    n = size(U,1)
    % perform substitution to find x
    for y = n:-1:1
        % solve for x_n
        if y == n
            x(n) = d(n) / U(n,n) ;
        % solve for all other x
        else
            x(y) = ( d(y) - U(y,y+1) * x(y+1) ) / U(y,y) ;  
        end
    end

    return

    return
end

