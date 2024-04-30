% Define the transfer function
num = [10, 56e-6];
den = [1, 5.6e-6];

% Create the transfer function
Tp = tf(num, den);

% Plot the Bode response
bode(Tp);
grid on;
title('Bode Plot of Tp(s)');
