clear all



guess = 5;
tollerance = 10^-10;
maxRuns = 50;

newton(@funct, @dfunct, guess, tollerance, maxRuns)
                                     

function x = funct(a)
    x = log(a);
end

function x = dfunct(a)
    x = 1/a;
end

% func: function
% dfunc: derrivatie of function
% guess: the initial guess
% tolerance: the error tolerance
% maxRuns: the maximum number of runs allowed before declaring failure
function [a,iterations] = newton(func, dfunc, guess, tolerance, maxRuns)

iterations = 0;
fprintf('iteration: \testimated x:\tf(estimate):\terror: |a_k - a_k1|\n');

%define the x_k and x'_k
aSubK = guess;
aSubKPrime = guess;

%make sure the tolerance checker cannot be triggered yet
err = tolerance+1;

%actual loop
while (err > tolerance) && (iterations < maxRuns)
    iterations = iterations+1;
    
    fprintf('\t %d \t \t  %f \t \t %f \t \t %e.\n', iterations, aSubK, func(aSubK), err);
    
    aSubK = aSubKPrime - func(aSubKPrime)/dfunc(aSubKPrime);
    
    err = abs(aSubK - aSubKPrime);
    
    aSubKPrime = aSubK;
    
end

a = aSubK;

end 