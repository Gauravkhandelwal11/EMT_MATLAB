%   Through appropriate analysis, determine the electric field and corresponding flux density at a radial distance of 3m in a region filled with silicone oil about a uniform line charge of 8 nC/m lying along the z – axis in the above said region. The dielectric constant of silicone oil is 2.78. Compare your analytical solution with that developed through appropriate MATLAB simulations.

%   Electric field intensity (E) corresponding to a line charge is given by:
%   E =  rho / ( 2 * pi * radius * epsilon )
%   Flux density is given by:
%   D = rho / ( 2 * pi * radius)
%   where
%   rho = line charge density, 8 nC/m = 8 * 10^(-9) C/m
%   pi = 3.1416
%   radius = distance of the point from the line, 3 m
%   epsilon = permittivity of the medium = epsilon_r * epsilon_0
%   epsilon_0 = permittivity of free space = 8.854 * 10^(-12)
%   epsilon_r = relative permittivity of the medium = 2.78


    clc
    clear all
    rho = 8 * 10^(-9)
    radius = 3
    epsilon = 2.78 * 8.854 * 10^(-12)
    E = rho / ( 2 * pi * radius * epsilon );
    disp('Electric field'), E
    D = rho / ( 2 * pi * radius);
    disp('Flux Density'), D
