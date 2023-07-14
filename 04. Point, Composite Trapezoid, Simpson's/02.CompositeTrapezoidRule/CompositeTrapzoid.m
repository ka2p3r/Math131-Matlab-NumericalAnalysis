function I = composite_trapezoid(f,a,b,n)
%function f
%bounds of interval [a,b]

%n number of subintervals
h=(b-a)/n; % step length
x=a:h:b; % creation of the nodes

for i=1:length(x)
y(i)=f(x(i)); % function evalution at nodes
end
% Trapezoid formula
l=length(x);
I=((h/2)*((y(1)+y(l))+2*(sum(y)-y(1)-y(l))));
end