% created by Nicholas Garrett


iterations = [5; 10; 20; 40; 80; 100]
I = zeros(1);
d = zeros(1);
for iter=1:length(iterations)
    % define the number of iterations needed to be run
    n = iterations(iter);

    % i0 = (1/e)(e-1)
    I0 = ( 1/exp(1) ) * (exp(1)-1);
    
    % calculate I(1)
    I(1) = 1 - 1*I0;
    
    % run the iterative estimation n number of times
    for n = 2:n

        % in = 1-nI_{n-1}   n= 1,2,3,...
        I(n) = 1 - ( n*I(n-1) );
    
    end
    
    fprintf("I(%d) = %d\n",n, I(n))
    %break

end

