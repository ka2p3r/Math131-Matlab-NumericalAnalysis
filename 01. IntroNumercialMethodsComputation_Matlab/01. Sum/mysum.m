function y = mysum(n) %setting the function 
sum=0;            %initiate           
    if n<0;       %if input value is less than 0 and if the output is -1
        y=-1;     %system will print -1 and output cannot input negative no.
        fprintf('cannot input a negative number');
    else 
        for i=0:n %if first condiditon is not met, consider the input element from n of domain 0-positive infinity
            sum = sum +i; 
        end 
        y=sum; 
    end 
end 