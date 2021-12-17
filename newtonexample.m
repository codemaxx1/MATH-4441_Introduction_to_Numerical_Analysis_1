
clear all



guess = 2;
tollerance = 10^-10;
maxRuns = 50;

newtonsMethod(@func, @dfunc, guess, tollerance, maxRuns)
    

function [x] = dfunc(a)
    x = 1/a;
end

function [x] = func(a)
    x = log(a);
end


% func: function
% dfunc: derrivatie of function
% guess: the initial guess
% tolerance: the error tolerance
% maxRuns: the maximum number of runs allowed before declaring failure
function [] = newtonsMethod(func, dfunc, guess, tolerance, maxRuns)    
    iteration = 0;
   
    fprintf('iteration\ta_k\t\tf(a_k)\t\t\t|a_k - a_k-1|\n');

    xk = guess;
    xk1 = guess;
    error = 1;
    while (error > tolerance) && (iteration<maxRuns)
        iteration = iteration+1;
        
        fprintf('%d\t%d\t\t%d\t%e.\n', iteration, xk, func(xk), error);
        
        xk = xk1 - func(xk1)/dfunc(xk1);
        
        error = abs(xk - xk1);
        
        xk1 = xk;
    end

    xk
    
end 