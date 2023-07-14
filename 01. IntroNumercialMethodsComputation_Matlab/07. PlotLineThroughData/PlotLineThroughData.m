% Data points
datx = [-3, -2, 0, 5, 9, 11];
daty = [4, -10, 7, 1, -5, 2];

% Function
f = @(x) x;

% Plot scatter points
scatter(datx, daty, 'filled', 'MarkerFaceColor', 'red');
hold on;

% Plot function
x = min(datx):max(datx);  % Use the range of data points as x interval
plot(x, f(x), 'blue', 'LineWidth', 2);

% Label axes
xlabel('x');
ylabel('y');

% Add legend
legend('Data points', 'Function f(x) = x');

% Turn off hold
hold off;
