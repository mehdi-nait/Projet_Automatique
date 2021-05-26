clear all;
close all;

G0=1.4364;
tau = 81.41;
retard = 14.4;

Amplitude = 50;

num = G0;
den = [tau^3 3*tau^2 3*tau 1];

HBO = tf(num,den,'InputDelay',retard);


step(HBO);

% title("boucle ouverte");
pidTuner(HBO);