% Define functions 
f = @(x) sqrt(x);
g = @(x) x.^2;

% Define an x interval
x = [0:0.1:7];

% Find y values
y1 = f(x);
y2 = g(x);

% Plot functions 
plot(x, y1, 'r', x, y2, 'b', 'LineWidth', 2)

% Label axes
xlabel('x')
ylabel('y')
