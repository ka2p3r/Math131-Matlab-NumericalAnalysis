function y = forward_substitution(L,b)
n=length(b);
y=zeros(n,1);

for i=1:n
    y(i,1)=1/L(i,i)*(b(i)-L(i,:)*y);
end
end