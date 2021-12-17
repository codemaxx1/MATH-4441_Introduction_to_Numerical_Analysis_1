n= 20;
fun = @(x) (x.^n)./(x+10);
func = @(x) integral(fun,0,1);
n1 = 21;
tolerance = 10^-8;
maxIterations = 50;

fixedPointFunc(func, n1, tolerance, maxIterations)

function yn = fixedPointFunc(func, n1, tolerance, maxIterations)
    iterations = 0;
    yn = feval(func, n1)
    
    while abs(n1-yn)>tolerance && iterations < maxIterations

        iterations = iterations + 1;
        n1 = yn;
        yn=feval(func,n1)
    end
end