function [c, n, err] = Newtons_method(f, fp, x0, N, tol)
    % function to solve the root-finding problem using Newton's method
    % INPUTS:
    % f function at hand
    % fp derivative of the function
    % x0 initial guess
    % tol: error tolerance
    % N: maximum number of iterations
    % OUTPUTS:
    % c the root
    % n the number of iterations made
    % err the error

    % Initialize the root and error
    c = x0;  
    err = tol + 1;
    
    % Initialize the number of iterations to 0
    n = 0;

    while n < N
        % Compute the update from the Newton's step
        c_new = c - f(c)/fp(c);

        % Compute the error
        err = abs(c_new - c);
        
        % Break the loop if the error is less than the tolerance
        if err < tol
            break
        end

        % Update the current root approximation
        c = c_new;

        % Increment the number of iterations
        n = n + 1;
    end
end