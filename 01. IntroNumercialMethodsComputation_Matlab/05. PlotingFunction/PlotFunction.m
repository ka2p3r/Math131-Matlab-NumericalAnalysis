% Define a function 
f = @(x) x.^2 + cos(x);

% Define an x interval
x = [-pi:0.1:3*pi];

% Find y values 
y = f(x);

% Plot function 
plot(x, y)

% Label axes
xlabel('x')
ylabel('y')
