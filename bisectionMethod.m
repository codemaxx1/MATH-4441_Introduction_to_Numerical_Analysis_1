


atol = 10^(-5)
n = 20

a = n-1;
b = n+1;

disp("calculate")
bisection(@func, a, b, atol, n)


function [value] = func(n,x)
    fun = @(x) (x.^n)./(x+10);
    value = integral(fun,0,1);
end

function [] = bisection(func, a, b, atol,n)
    
%initial variables
    fa = func(n, a)
    fb = func(n, b)
    n1 = n-1
    func(n1)
    
    % check input
    if (a >= b)
        error 'check your bounds'
    end
    %if fa*fb >= 0
    %    error 'f(a) * f(b) >= 0'
    %end
    if (atol<=0)
        error 'tolerance is too low'
    end     
    
    n = ceil ( log2 (b-a) - log2 (2*atol));
   
    for k=1:n
        p = (a+b)/2;
        fp = feval(func,p);

        if abs(fp) < eps, n = k; return, end

        if fa * fp < 0
            b = p;

        else
            a = p;
            fa = fp;
        end
    end
    
    p = (a+b)/2
    
end