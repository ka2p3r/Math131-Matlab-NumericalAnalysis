function [y,L] = Lagrange_poly(x,datx,daty)
    %function that computes the Lagrange interpolant of f over [a,b] 
    %INPUTS: 
    % (datx, daty) is set of points from which we create the interpolant
    % x is the set of point to interpolate on
    % OUTPUT: y the Lagrange interpolant and L the lagrange polynomials

    N = length(datx);
    L = ones(length(x),N); % specify the initialization
    y = zeros(length(x),1); % specify how y should be initialized
    %creation of Lagrange polynomial
    for m = 1 : N
        for i = 1 : N
            if i == m
            else
                L(:,m) = L(:,m) .* ( (x(:) - datx(i)) ./ (datx(m) - datx(i) ) );
            end
        end 
    end 
    y = 0;
    %creation of the interpolant
    for m = 1:N 
     y = y + daty(m) .* L(:, m); 
    end
    
end 