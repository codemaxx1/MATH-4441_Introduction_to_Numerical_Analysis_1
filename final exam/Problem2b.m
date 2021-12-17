% created by Nicholas Garrett


iterations = [5; 10; 20; 40; 80; 100]

for iter=1:length(iterations)
    I = zeros(iterations(iter));
    d = zeros(1);


    % define the number of iterations needed to be run
    n = iterations(iter);

    % i0 = (1/e)(e-1)
    I0 = ( 1/exp(1) ) * (exp(1)-1);
    
    % calculate I(0)
    I(1) = I0;
    
    % run the iterative estimation n number of times
    for n = 2:n+1

        % more numerically stable formula
        I(n) = 
        
        
        % calculate norm
        if n > 1
            d(n) = norm(I(n) - I(n-1));
        end

    end
    
    fprintf("I(%d) = %d\n",n-1, I(n))
    %break

end

