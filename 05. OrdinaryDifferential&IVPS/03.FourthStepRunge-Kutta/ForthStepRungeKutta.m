function [y,t] = rk4(f,t0,tf,alpha,N)
 h=(tf-t0)/N;
t=t0:h:tf;
t=t';
N=length(t);
y=zeros(N,length(alpha));
y(1,:)=alpha;
for i = 1:N-1
k1 = f(t(i),y(i,:));
k2 = f(t(i)+h/2,y(i,:) + k1*h/2);
k3 = f(t(i)+h/2,y(i,:) + k2*h/2);
k4 = f(t(i)+h,y(i,:) + k3*h);   
sum = (k1+2*k2+2*k3+k4)/6;
y(i+1,:) = y(i,:) + sum*h;
end

end