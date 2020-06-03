n = 0;
T = 2;
Ts = T / 200; % steps to samples
t=-T/2 : Ts : T/2; % Generate samples
w=(2*pi)/T;
y = 0;
for n = 0 : 5
    y = y + ((2*n+1)^-2) * (cos((2*n+1)*w*t)); % Generating triangular wave
end
plot(t, y, 'linewidth', 3) % Plotting