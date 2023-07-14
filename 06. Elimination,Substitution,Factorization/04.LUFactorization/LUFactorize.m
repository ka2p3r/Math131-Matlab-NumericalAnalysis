function [L,U] = LU_factorization(A)
N=length(A);
for k=1:N-1
    for i=k+1:N
        factor=A(i,k)/A(k,k);
        A(i,k)=factor;
        for j=k+1:N
            A(i,j)=A(i,j)-factor*A(k,j);
        end
    end
end
[numRows,numCols]=size(A);
L=diag(ones(1,numRows));
U=A;
i=2;n1=1;k=0;
while i<=numRows
    for j=1:n1
        L(i,j)=A(i,j); 
        U(i,j)=0;
    end 
        n1=n1+1;
        i=i+1;
end


end