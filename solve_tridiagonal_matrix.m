
% size of matrix
n = 10;

% matrix A
A = [ 1 2 0 0 0;
      2 3 4 0 0;
      0 4 5 6 0;
      0 0 7 8 9;
      0 0 0 8 1];

tridiagonalSolver(A)

function x = tridiagonalSolver(A)
    n = size(A)

    %iterate through the rows
    for i = 1:n
        %iterate thorugh the columns holding data
        %for 
        fprintf("hello")
            %do not go past 
            if i == n
                break
            end
    end
    x = "alert, something went wrong"
end