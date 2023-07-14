function [y,t] = rk2(f,t0,tf,alpha,N)
h=(tf-t0)/N;
t=t0:h:tf;
t=t.';
y=zeros(size(t));
y(1)=alpha;
for i=1:length(t)-1
    k1=h*f(t(i),y(i));
    k2=h*f(t(i)+h/2,y(i)+k1/2);
    y(i+1)=y(i)+k2;
end
end