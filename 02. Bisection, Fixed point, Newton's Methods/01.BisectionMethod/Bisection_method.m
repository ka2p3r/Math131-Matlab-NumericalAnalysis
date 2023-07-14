function [c,n,err] = bisection_method(f,a,b,tol,N)
    % Check conditions for applying the bisection method
    if f(a) * f(b) >= 0 || tol <= 0 || N <= 0 || a >= b
        c = []; % Return empty matrix if conditions are not met
        n = 0; % Number of iterations is zero
        err = inf; % Error is infinite
    else
        n = 0; % Initialize number of iterations at zero
        err = abs(b - a); % Compute initial error
        c = (a + b) / 2; % Compute initial midpoint

        while err > tol && n < N
            % Increment the number of iterations
            n = n + 1;

            % Compute midpoint
            c = (a + b) / 2;
            
            % Update a or b based on the sign of f at c
            if f(a) * f(c) < 0
                b = c;
            else
                a = c;
            end

            % Update error
            err = abs(b - a);
        end

        if err > tol
            % The error tolerance was not met within N iterations
            c = []; % Return empty matrix for root
            n = 0; % Reset number of iterations
            err = inf; % Error is infinite
        end
    end
end