

n = 5;

for i=1:n
    for j = 1:n
        
        if i>j+1
            H(i,j)=0;
        else
            H(i,j) = 1;
        
    end
    end
end

    H