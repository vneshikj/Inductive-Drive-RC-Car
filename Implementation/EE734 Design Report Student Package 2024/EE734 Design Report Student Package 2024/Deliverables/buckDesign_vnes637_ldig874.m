% Clearing past figures and values
clear;
close all;
clc;

% Parameters
RL = 2;
Cout = 330 * 10^(-6);
resr = 52 * 10^(-3);
Rs = 0.26;

% Setting up transfer function of current controlled system
num  = [RL];
den = [(Rs * Cout * RL), Rs];
sys = tf(num, den);

% Creating range of frequencies
w = logspace(-1, 8, 8000); 

% Plotting bode plot
[MAG, PHASE] = bode(sys, w);
figure('Name','Bode plot of current controlled buck');
bodeplot(sys, w);
margin(sys, w);

sysPole = abs(((pole(sys)) ./ (2 * pi)));
sysZero = abs(((zero(sys)) ./ (2 * pi)));
DC = dcgain(sys);
DCdb = 20 * log10(DC);

disp(['Pole(Hz) : ', num2str(sysPole)]);
disp(['Zero(Hz) : ', num2str(sysZero)]);
disp(['DC Gain(Real): ', num2str(DC)]);
disp(['DC Gain(dB): ', num2str(DCdb)]);