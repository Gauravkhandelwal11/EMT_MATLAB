%  Determine though suitable analysis, the capacitance of:

%   a) 1 ft length of 35B/U coaxial cable which has an inner conductor of 0.1045 inches in
%   diameter, a polyethylene dielectric (dielectric constant of 2.26), and an outer conductor
%   which has an inner diameter of 0.680 inches.

%   b) A conducting sphere of radius 2.5 mm, covered with a polyethylene layer 2 mm thick,
%   surrounded by a conducting sphere of radius 4.5 mm.

%   c) Two rectangular conducting plates, 1 cm by 4 cm, with negligible thickness, between
%   which are three dielectrics, each 1 cm by 4 cm, and 0.1 mm thick, having dielectric
%   constants of 1.5, 2.5 and 6.
%   Compare your analytical solution with that developed through appropriate MATLAB simulations

clc
clear

a1 = 0.1045; %inches
b1 = 0.680; %inches
l = 1; % feet
l = convlength(l,'ft','m'); %meter
k = 2.26;
epsilon0 = 8.85e-12;

% a) Determine and print capacitance
C1 = 2*pi*k*epsilon0*l/log(b1/a1); % Capacitance
fprintf('a) C = %.4g F\n',C1)

% b) Determine and print capacitance
a2 = 2.5e-3; %m
b2 = 4.5e-3; %m
C2 = 4*pi*k*epsilon0*a2*b2/(b2-a2); % Capacitance
fprintf('b) C = %.4g F\n',C2)

% c) Determine and print capacitance
A = (1e-2)*(4e-2);
d1 = 0.1e-3; %m
d2 = 0.1e-3; %m
d3 = 0.1e-3; %m
k1 = 1.5;
k2 = 2.5;
k3 = 6;
C3 = epsilon0*A/(d1/k1 + d2/k2 + d3/k3); % Capacitance
fprintf('c) C = %.4g F\n',C3)

