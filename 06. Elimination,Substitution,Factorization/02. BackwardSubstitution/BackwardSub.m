function x = backward_substitution(U,f)
% backward substitution for an upper triangular matrix
n=length(f);
x=zeros(n,1);

for i=n:-1:1
    x(i,1)=1/U(i,i)*(f(i)-U(i,:)*x);
end
 
 
end