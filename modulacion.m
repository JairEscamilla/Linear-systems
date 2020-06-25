t = 0:0.00001:0.01;

% Señal de frecuencia de 3.5 KHz
Sm = 0.5*sin(3500*t);
subplot(3, 1, 2);
plot(t, Sm);
xlabel("Tiempo");
ylabel("Amplitud");
title("Señal de 3.5 KHZ");
grid on;


% Señal de frecuencia de 540 KHz
St = sin(540000*t);
subplot(3, 1, 1);
plot(t, St);
xlabel("Tiempo");
ylabel("Amplitud");
title("Señal de 540 KHz");
grid on;

% Señal modulada
Sam = St.*Sm;
subplot(3, 1, 3);
plot(t, Sam);
xlabel("Tiempo");
ylabel("Amplitud");
title("Señal modulada");
grid on;