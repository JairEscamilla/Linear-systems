t = 0:0.00001:0.01;
St = sin(540000*t);
subplot(3, 1, 1)
plot(t, St)

Sm = 0.5*sin(3500*t);
subplot(3, 1, 2)
plot(t, Sm)

Sam = St.*Sm;
subplot(3, 1, 3)
plot(t, Sam)