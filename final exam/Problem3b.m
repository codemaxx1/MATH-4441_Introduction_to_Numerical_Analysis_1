% created by Nicholas Garrett

% randomly generate a, b, and c
a = rand();
b = rand();
c = rand();

% check the "correct answer"
xC = roots([a b c]);
% calculate my algorithm's answer 
[x] = quadratic(a,b,c);
fprintf("For a = %d (rand), b = %d (rand), and c = %d (rand)\n my algorithm returned %d and %d for x1 and x2\n the root() function returned %d \n\n", a, b, c, xF(1), xF(2), xC(1), xC(2) )


% calculate for a = 0
xC = roots([0 b c]);
xF = quadratic(0, b,c);
fprintf("For a = 0, b = %d (rand), and c = %d (rand)\n my algorithm returned %d and %d for x1 and x2\n the root() function returned %d \n\n", b, c, xF(1), xF(2), xC(1) )

% calculate for a = 1, b=-10^6 c =1
a = 1;
b = -1e6;
c = 1;
xC = roots([a b c]);
xF = quadratic(a, b, c);
fprintf("For a = %d, b = %d, and c = %d\n my algorithm returned %d and %d for x1 and x2\n the root() function returned %d and %d\n\n", a, b, c, xF(1), xF(2), xC(1), xC(2) )

% calculate for a = 10^-20, b=-10^20 c =10^20
a = 1e-20;
b = -1e20;
c = 1e20;
xC = roots([a b c]);
xF = quadratic(a, b, c);
fprintf("For a = %d, b = %d, and c = %d\n my algorithm returned %d and %d for x1 and x2\n the root() function returned %d and %d\n\n", a, b, c, xF(1), xF(2), xC(1), xC(2) )


function [x] = quadratic(a, b, c)
    x = zeros(2,1);

    x(1) = -4*c/( (2*b) + 2*sqrt(b^2 - 4*a*c) );

    x(2) = ( -b - (b^2 - 4*a*c)^0.5 ) / (2*a);

   
end