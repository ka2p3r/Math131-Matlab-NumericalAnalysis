function [c,n,err] = fixed_point_iteration(g,x0,tol,N)
    % function to solve the root-finding problem g(x) - x = 0 by solving g(x)=x 
    % INPUTS:
    % g function at hand
    % x0 initial guess
    % tol: error tolerance
    % N: maximum number of iterations
    % OUTPUTS:
    % c the root
    % n the number of iterations made
    % err the error

    n = 0;  % Initialize the number of iterations
    err = tol + 1;  % Initialize the error to be larger than the tolerance

    while n < N
        x1 = g(x0);  % Compute the value of the function at x0
        err = abs(x1 - x0);  % Compute the absolute error
        x0 = x1;  % Update x0 to the new value
        n = n + 1;  % Increment the number of iterations

        if err <= tol
            break
        end
    end

    c = x0;  % Set the root to the current x0
end

