% Clearing past figures and values
clear;
close all;
clc;

% Plant
num  = [(56e-6), 10];
den = [(56e-3), 0.332];
sys = tf(num, den);


% Creating range of frequencies
% w = logspace(0, 8, 1000);
% 
% Bode plot
% figure('Name','Bode plot ');
% bode(sys, w);
% margin(sys);


% Create the transfer function
Tp = tf(num, den);

% Specify the frequency range
omega = logspace(0, 8, 1000); % Define your frequency range here

% Plot the Bode response with the specified frequency range
bode(Tp, {omega(1), omega(end)});
grid on;
title('Bode Plot of Tp(s)');