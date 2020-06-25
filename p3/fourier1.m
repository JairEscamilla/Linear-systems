% Serie de Fourier para la señal cuadrada
n = input("Ingresar número de armonicos: ")
V = 5;
T = 0.5;
w = 2*pi*(1/0.5);
armonicos = 0:1:n;
results = [];
counter = 1
for t= -1:0.01:1
    y = 0;
    potencia_total = 0;
    for armonico= 1:2:n
        y = y + ((4*V)/(armonico*pi))*sin(armonico*t);
        if armonico-1 == 10 | armonico-1 == 20
            distorsion = (((4*V)/((armonico-1)*pi))^2)/((4*V)/pi);
            disp("Distorcion en ");
            disp(armonico-1)
            disp(distorsion)
        end
    end
    results(counter) = y;
    counter = counter + 1;
end
t = -1:0.01:1;
plot(t, results)
x=square(t);
corrcoef(x, t)