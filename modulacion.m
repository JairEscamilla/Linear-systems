t = 0:0.00001:0.01;
% Señal de frecuencia de 3.5 KHz (Tiempo)
Sm = 0.5*sin(2*pi*3500*t);
subplot(4, 1, 1);
plot(t, Sm);
xlabel("Tiempo");   
ylabel("Amplitud");
title("Señal de 3.5 KHZ (Tiempo)");
grid on;

% Señal de frecuencia de 3.5 KHz (Frecuencia)
Smf = fft(Sm);
subplot(4, 1, 2);
plot(t, abs(Smf));
xlabel("Frecuencia");
ylabel("Amplitud");
title("Señal de frecuencia de 3.5 KHz");


% Señal de frecuencia de 540 KHz (Tiempo)
St = sin(2*pi*540000*t);
subplot(4, 1, 3);
plot(t, St);
xlabel("Tiempo");
ylabel("Amplitud");
title("Señal de 540 KHz (Tiempo)");
grid on;

% Señal modulada (Tiempo)
Sam = St.*Sm;
subplot(4, 1, 4);
plot(t, Sam);
xlabel("Tiempo");
ylabel("Amplitud");
title("Señal modulada (Tiempo)");
grid on;