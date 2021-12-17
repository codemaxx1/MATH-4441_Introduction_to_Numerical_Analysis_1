clear all

guess = 0.1;
guess2 = 1;
tollerance = 10^-10;
maxRuns = 50;

% approximate for both initial guesses
newtonsMethod(guess, tollerance, maxRuns)
newtonsMethod(guess2, tollerance, maxRuns)
   

% guess: the initial guess
% tolerance: the error tolerance
% maxRuns: the maximum number of runs allowed before declaring failure
function [] = newtonsMethod( guess, tolerance, maxRuns)    
    
    x = guess; % initial value
    xk1 = guess;

    for i = 1:maxRuns

        % f(x) = 1/x f'(x) = -1/x^2
        % f(x)/f'(x) = -(1/x)/(1/x^2) = -x^2/x = -x
        x = xk1 + pi; %(1/pi)/(-1/pi^2) = -pi

        % tolerance criteria
        if abs(x-xk1) < tolerance
            break
        end

	    xk1 = x;

        
    end

    x

end