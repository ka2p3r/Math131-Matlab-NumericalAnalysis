function [y t] = ab4(f,t0,tf,alpha,N)
h = (tf - t0) / N;
h24 = h / 24;
t=t0:h:tf;
t=t'
y(1,:) = alpha;
t(1) = t0;

m = min(3,N);

for i = 1 : m % start-up phase, using Runge-Kutta of order 4
    t(i+1) = t(i) + h;
    s(i,:) = f(t(i), y(i,:));
    s2 = f(t(i) + h / 2, y(i,:) + s(i,:) * h /2);
    s3 = f(t(i) + h / 2, y(i,:) + s2 * h /2);
    s4 = f(t(i+1), y(i,:) + s3 * h);
    y(i+1,:) = y(i,:) + (s(i,:) + s2+s2 + s3+s3 + s4) * h / 6;
end;

for i = m + 1 : N % main phase
    s(i,:) = f(t(i), y(i,:));
    y(i+1,:) = y(i,:) + (55 * s(i,:) - 59 * s(i-1,:) + 37 * s(i-2,:) - 9 * s(i-3,:)) * h/24; % predictor
    t(i+1) = t(i) + h;
%     y(i+1,:) = y(i,:) + (9 * f(t(i+1), y(i+1,:)) + 19 * s(i,:) - 5 * s(i-1,:) + s(i-2,:)) * h/24; % corrector
end;