t=-2:0.01:2;
x=0.5+0.5*square(pi*t+(pi/2),50);
plot(t,x);
grid
ylim([-.1 1.1])
title('Fourier');