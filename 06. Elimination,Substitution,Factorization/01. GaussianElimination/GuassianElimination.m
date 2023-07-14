function [U,f] = gaussian_elimination(A,b)
% performs gaussian elimination on the augmented matrix [A,b], returning
% the upper-triangular matrix U (from A) and the updated vector f (from b)
n= size(A,1);
    for i = 1:n-1
        if A(i,i) == 0 % set the condition in the case that A(i,i) is 0. 
           x = min(find(A(i+1:n,i) ~= 0) + i); %if the condition is not zero, add the iteration 
           temp = A(i,:);     
           xb = b(i); % setting condition for matrices for A and matrix column for b
           A(i,:) = A(x,:);  
           b(i) = b(x);
           A(x,:) = temp;     
           b(x) = xb;
        end
        for j = i+1:n %condition for swaping the variable of A in correspond to iteration
            l = -A(j,i) / A(i,i);
            A(j,i) = 0;
            A(j, i+1:n) = A(j, i+1:n) + l*A(i, i+1:n);
            b(j) = b(j) + l*b(i);
        end
    end
    U = A; %displa01y matrix of A and solution column of b 
    f = b;
end