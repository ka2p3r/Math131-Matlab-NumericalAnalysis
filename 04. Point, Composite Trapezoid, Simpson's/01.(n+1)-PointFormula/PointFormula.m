f = @(x)(x.^2-3*x+2).*atan(x); % input of the function 
df = @(x)(x.^2-3*x+2)/(x^2 +1)+(2*x-3)*atan(x); % take the derivative of the original function 
% applying the forward difference 
%applying 3-5 point fomrula 
fd1 = @(x,n)(f(x+10^-n))/10^-n;
CD3 = @(x,n)(-f(x-(10^-n))+f(x+(10^-n)))/(2*(10^-n));
CD5 = @(x,n)(f(x-2*(10^-n))-8*f(x-(10^-n))+8*f(x+(10^-n))-f(x+2*(10^-n)))/(12*(10^-n));
x=0;
FD1 = fd1(x,1);
FD3 = fd1(x,3);
FD6 = fd1(x,6);

CD31=CD3(x,1);
CD33=CD3(x,3);
CD36=CD3(x,6);

CD51=CD5(x,1);
CD53=CD5(x,3);
CD56=CD5(x,6);
%compute for abs err 
FD=abs([FD1,FD3,FD6]-df(x));
CD3=abs([CD31,CD33,CD36]-df(x));
CD5=abs([CD51,CD53,CD56]-df(x));
h = 10.^-([1,3,6]);
%loglog plot for abs err
loglog(h,FD,'-o',h,CD3,'-o',h,CD5,'-o')
xlabel('h')
ylabel('err')
legend('fd1','CD3','CD5','location','best')

