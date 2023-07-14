datx=rand(20,1);
daty=rand(20,1);
hold on;
scatter(datx,daty);
x=min(datx):0.01:max(datx);
y=x;
plot(x,y);
legend('scatter','f(x)=x','Location','best');