
% compute the value of the point and exact derivative
x0  = 1.2;

f0  = sin(x0);
df  = cos(x0);
ddf =-sin(x0);

% create a vector of h values to use
n  = 0:0.5:20;
h  = 10.^(-1*n);

% evaluate the discrete derivative approximation
dfp = (2./h) .* sin(h/2) .* cos(((x0+h)+x0)/2);

err = abs(df - dfp);

% since f''(x) = -f(x) when f(x) = sin(x), this is calculating (h/2)*|f''(x)|
% which is the expected error
expected_error = (1/2)*abs(ddf)*h;

% plot the error and the expected error
loglog(h,err,'-*',h,expected_error,'r--');
xlabel('h');
ylabel('absolute error');
axis tight


