

A = [   1 5 3;
        2 3 4;
        3 2 5]

    nma_LU(A)

    tril(A)
    function [L,U,P]=nma_LU(A)

    %******************************
    %* Internal functions to flip
    %* rows for row pivoting
    %******************************

 [nRow,nCol]=size(A);
    P=diag(ones(nRow,1));
    U=zeros(nRow);
    L=zeros(nRow);

    for n=1:nRow-1
        currentPivot=A(n,n);
        
        E=diag(ones(nRow,1));
        
        maxPivot=max(A(n+1:end,n));
     
        
       
        for i=n+1:nRow
            L(i,n)=A(i,n)/A(n,n);
            A(i,n)=0;
            for j=n+1:nRow
                A(i,j)=A(i,j)-L(i,n)*A(n,j);
            end
        end       
    end
   
    L=L+diag(ones(nRow,1));    
    P=P';
    U=A;  % that is all         
end
