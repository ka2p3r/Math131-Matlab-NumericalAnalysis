function I = composite_simpsons(f,a,b,n)
    h=(b-a)/n

    x = a:h:b;

    y=[];

    i=1;

    for x=a:h:b

        y(i) = f(x);

        i=i+1;

    end

    I=0;

    for i=1:length(y)-1

        I=I+((y(i)+y(i+1))*h)/(2);

    end

end