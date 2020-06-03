t = -1:0.01:5
% Start with all zeros
y = zeros(size(t))

% But make everything corresponding to t>=1 one:
y(t>=1) = 1

plot(t, y, 'linewidth', 3)