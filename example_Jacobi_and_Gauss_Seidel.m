
% assemble matrix A and the solution vector
A = [   10 1 1;
        1 10 1
        1 1 10];
b = [ 12; 12; 12];


%% Jacobi 

n = norm(b);
x = x0;
% iterations counter
iterations = 1;
% make sure it only runs twice
while iterations < 3
    x = x + diag(diag(A))\(b - A*x);
    n = norm(b - A*x,1);
    fprintf('Jacobi: iteration: %d,  error = %d \n', iterations, n);
    
    % iterate counter
    iterations = iterations +1; 
end


%% Gauese-Seidel

x = x0;
% reset iterations counter
iterations = 1;
n =norm(b);
% make sure it only runs once
while iterations == 1
    x = x + tril(A)\(b - A*x);
    n = norm(b - A*x,1);
    fprintf('Gauss-Seidel iteration:%d,  error = %d \n', iterations, n);
    
    % iterate counter
    iterations = iterations +1; 
end

