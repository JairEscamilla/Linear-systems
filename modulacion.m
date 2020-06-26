t = 0:0.00001:0.01;
filas = 5;
columnas = 2;
fs = 1000;

% Señal de frecuencia de 3.5 KHz (Tiempo)
Sm = 0.5*sin(2*pi*3500*t);
subplot(filas, columnas, 1);
plot(t/0.0003, Sm);
xlabel("Tiempo");   
ylabel("Amplitud");
title("Señal de 3.5 KHZ (Tiempo)");
grid on;

% Señal de frecuencia de 3.5 KHz (Frecuencia)
Smf = fft(Sm);
fn = 0:1:fs;
subplot(filas, columnas, 2);
plot(fn, abs(Smf));
xlabel("Frecuencia");
ylabel("Amplitud");
title("Señal de frecuencia de 3.5 KHz");


% Señal de frecuencia de 540 KHz (Tiempo) Portadora
St = sin(2*pi*540000*t);
subplot(filas, columnas, 3);
plot(t, St);
xlabel("Tiempo");
ylabel("Amplitud");
title("Señal de 540 KHz (Tiempo)");
grid on;

% Señal modulada (Tiempo)
Sam = St.*Sm;
subplot(filas, columnas, 4);
plot(t, Sam);
xlabel("Tiempo");
ylabel("Amplitud");
title("Señal modulada (Tiempo)");
grid on;


% Señal demodulada (Tiempo)
sdt = Sam.* St;
subplot(filas, columnas, 5);
plot(t, sdt);
xlabel("Tiempo");
ylabel("Amplitud");
title("Señal demodulada");
grid on;
    
% Reproduciendo la señal de 3.5 KHz
sound(Sm);

% Reproduciendo la señal demodulada
sound(sdt);
