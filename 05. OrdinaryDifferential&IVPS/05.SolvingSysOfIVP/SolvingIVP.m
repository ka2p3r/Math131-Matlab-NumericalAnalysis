function [y,t] = euler_system(f,g,t0,tf,alphas,N)
    %function that computes the solution to the system of IVPs
    % y1'=f(t,y1,y2) 
    % y2'=g(t,y1,y2)
    % y1(t0)=alpha(1), y2(t0)=alpha(2), over the interval [t0,tf] with N steps.
    %INPUTS: 
    % function f for y1'
    % function g for y2'
    % initial conditions alpha =[y1(t0),y2(t0)]
    % bounds of interval [t0,tf]
    % N number of nodes used
    %OUTPUT: 
    % Y the solution
    % t the time steps
    
    %creation of the nodes and time step

    
    %creation solution via Euler's method
     dt = (tf-t0)/N;
     t=zeros(N+1,1);
     y=zeros(N+1,2);
    
    %Creation of solution via Euler's method
    y(1,1) = alphas(1);
    y(1,2) = alphas(2);
    t(1)=t0
    for i=2:N+1
        t(i)=t(i-1)+dt;
    end
for i=2:N+1 
    y(i,1) = y(i-1,1)+f(t(i-1),y(i-1,1),y(i-1,2))*dt;
    y(i,2) = y(i-1,2) +g(t(i-1),y(i-1,1),y(i-1,2))*dt;

end