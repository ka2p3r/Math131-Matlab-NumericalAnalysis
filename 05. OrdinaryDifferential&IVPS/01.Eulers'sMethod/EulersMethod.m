function [y,t] = euler_timestep(f,t0,tf,alpha,N)
h=(tf-t0)/N;
t=t0:h:tf;
t=t';
y=zeros(size(t));
y(1)=alpha;
for i=2:length(t)
    y(i)=y(i-1)+h*f(t(i-1),y(i-1));
end
end
