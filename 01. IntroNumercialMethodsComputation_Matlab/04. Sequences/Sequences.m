function y = Sequence(n)
    a(1) = (17+2*sqrt(7))/5;
    for i = 2:n+1
        a(i) = 0.25 * (5 * a(i-1)^2 - 30 * a(i-1) + 25);
    end 
    y = a(n+1)
end 