n = input("Ingresar número de armonicos: ")
V = 5;
T = 0.5;
w = 2*pi*(1/0.5);

armonicos = 0:1:n;
results = zeros(1, 100, 'double');
for t= 0:100
    y = 0;
    for armonico= 2:1:n
        y = y + ((4*V)/(armonico*pi))*sin(armonico*t);
    end
    results(t+1) = y;
end

plot(results)