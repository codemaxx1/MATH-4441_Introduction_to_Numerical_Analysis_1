clear all



guess = 1;
tollerance = 10^-8;
maxRuns = 50;

newton(@funct, @dfunct, guess, tollerance, maxRuns)


function y = funct(x)
    y = x^3-10;
end

function y = dfunct(x)
    y = 3*x^2;
end

% func: function
% dfunc: derrivatie of function
% guess: the initial guess
% tolerance: the error tolerance
% maxRuns: the maximum number of runs allowed before declaring failure
function [x,iterations] = newton(func, dfunc, guess, tolerance, maxRuns)

format long;
iterations = 0;

fprintf('iteration: \testimated x:\tf(estimate):\terror: |xk - xk1|\n');

%define the x_k and x'_k
xSubK = guess;
xSubKPrime = guess;

err = tolerance+1;

%actual loop
while (err > tolerance) && (iterations < maxRuns)
    iterations = iterations+1;
    
    fprintf('\t %d \t \t  %f \t \t %f \t \t %e.\n', iterations, xSubK, func(xSubK), err);
    
    xSubK = xSubKPrime - func(xSubKPrime)/dfunc(xSubKPrime);
    err = abs(xSubK - xSubKPrime);
    xSubKPrime = xSubK;
    
    if func(xSubK) < tolerance
        iterations = maxRuns;
    end
end

x = xSubK;

end 