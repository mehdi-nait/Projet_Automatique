close all;
clear all;

load('data.mat');
Y2 = 1.1e-6* X.^3 - 0.0012* X.^2 + 0.44*X+ 17;

%Equation Y = 1.1e-6* X.^3 - 0.0012* X.^2 + 0.44*X+ 17

%parametres fonction de transfert : T  : retard = 14.4s (expérimentatl)
%                                   tau: 81.41s
%                                   G0 :  0.1915 s/degré celcius           G0 = max_y/max_x;
%                                   n  : 3
%                                   Tf=

plot(X,Y);
hold on
plot(X,Y2);
title("modélisation cubique");

max_y = max(Y);
max_x = max(X);

G0 = max_y/max_x;

max_y =0.63*max_y;
y = max_y*ones(size(X));
plot(X,y);

