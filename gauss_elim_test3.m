%initial variables 
A = [   7 -6 -12; 
        5 5 7; 
        1 5 4]; %matrix A, an example non-singular matrix



for k = 1 : n -1 
    for i = k + 1 : n 
        A(i,k) = A(i,k)/A(k,k)
        for j = k + 1 - n 
            A(i,j) = A(i,j) -A(i,k)*A(k,j)
        end
    end
end