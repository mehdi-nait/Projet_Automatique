clear all;
close all;

G0=0.1915;
tau = 81.41;
retard = 14.4;


num = G0;
den = [tau^3 3*tau^2 3*tau 1];
p = tf(num,den,'InputDelay',retard);
%opt = stepDataOptions('StepAmplitude',71.8200);
step(p,opt);