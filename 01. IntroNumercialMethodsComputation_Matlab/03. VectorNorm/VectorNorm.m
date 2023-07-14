function norm = myvectornorm(x)
% calculate the norm
  sum = 0;       %initilizing varaible
    L = length(x);  %Length of x vector
    for i=1:L
    sum = sum + x(i)^2;    % Adding square of each element in x vector
    end
    modul = sqrt(sum);         
    norm = modul;

end