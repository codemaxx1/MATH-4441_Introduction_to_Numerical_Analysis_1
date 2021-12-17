% 

% the values for X do not affect the eigenvalue approximation
X = 0

% build matrix
A = [   
        X, 7/10, 4/9, 3/9, 2/5;
    	3/10, X, 4/6, 3/6, 4/7;
    	5/9, 2/6, X, 6/9, 4/8;
	    6/9, 3/6, 3/9, X, 2/6;
	    3/5, 3/7, 4/8, 4/6, X;
    ]

n = length(A);
exactLambda = n;
x_initial = ones(n,1);

% Do it for A
x = x_initial; 
x = x/norm(x);

% perform the approximation
for i = 1:5000,
    x = A*x; 
    x = x/norm(x); 
    
    % update eigenvalue approx.
    lambda = x'*A*x; 

end



% print the approximated largest eigenvalue 
fprintf("largest eigenvalue: %d \n it's eigenvector:",lambda)
x %fprintf(x)

