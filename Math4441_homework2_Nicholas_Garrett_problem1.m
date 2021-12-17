
% compute the value of the point and exact derivative
x0  = 1.2;
f0  = sin(x0);
fp  = cos(x0);
fpp =-sin(x0);

% create a vector of h values to use
n  = 0:0.5:20;
h  = 10.^(-1*n);

% evaluate the discrete derivative approximation
dfp = (2./h) .* ( (sin((x0+h)- x0)/2) .* (cos((x0 + h)+x0)/2) ) ;

err = abs(fp - dfp);

% plot the error and the expected error
loglog(h,err,'-*',h,err,'r--');
xlabel('h');
ylabel('absolute error');
axis tight