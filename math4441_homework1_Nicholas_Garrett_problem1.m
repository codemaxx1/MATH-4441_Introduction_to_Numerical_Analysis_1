
clear

% compute the value of the point and exact derivative
x0  = 0.5;
% f(x)
f0  = exp(-2*x0);
% f'(x) first derivative
fp  = -2*exp(-2*x0);
% f''(x) second derivative
fpp = 4*exp(-2*x0);

% create a vector of h values to use
i  = -20:0.5:0;
h  = 10.^i;

% evaluate the discrete derivative approximation
dfp = ( exp(-2*(x0+h)) -f0) ./ h;

err = abs(fp - dfp);

% since f''(x) = -f(x) when f(x) = sin(x), this is calculating (h/2)*|f''(x)|
% which is the expected error
expected_error = (1/2)*abs(fpp)*h;

% plot the error and the expected error
loglog(h,err,'-*',h,expected_error,'r--');
xlabel('h');
ylabel('absolute error');
axis tight
