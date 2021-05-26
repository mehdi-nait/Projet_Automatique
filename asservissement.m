close all;
clear all;

load('data.mat');
Y2 = 1.1e-6* X.^3 - 0.0012* X.^2 + 0.44*X+ 17;
consigne = 50;
%Equation Y = 1.1e-6* X.^3 - 0.0012* X.^2 + 0.44*X+ 17

%parametres fonction de transfert : T  : retard = 14.4s (expérimentatl)
%                                   tau: 81.41s
%                                   G0 :  1.4364
%                                   n  : 3
%                                   

plot(X,Y);
hold on
plot(X,Y2);
title("modélisation cubique");

max_y = max(Y)
max_x = max(X);

G0 = max_y/consigne


y = consigne*ones(size(X));
z = max_y*ones(size(X));
plot(X,y);
plot(X,z);

