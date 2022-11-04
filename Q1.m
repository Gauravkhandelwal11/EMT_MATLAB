%  An electron beam is oriented along the z – axis as shown in Figure below. The axial direction is along the z -axis, whereas the "in- plane" refers to the XY -plane. The superscript " − " refers to the interior of a cylinder, whereas the superscript "+" refers to the exterior. Analysis is to be done on the beam for a length ranging from 2 – 4 cm along the axial direction. The radial lengt of the bam is considered to be 1 cm. For a considered charge density of −5𝒆−𝟏𝟎𝟓𝑹𝒛𝜇𝐶/𝑚3, through suitable analysis, determine the contained charge in the considered section of the electron beam. Compare your analytical solution with that developed through appropriate MATLAB simulations.

%   Charge contained is given by q = int(D.ds)
%   where D = charge density
%   ds = rho*d(rho)*d(phi)*dz


    clc
    clear
    fun = @(rho,z,phi) -5*exp(-1e5.*rho.*z).*rho.* 10^(-6);
%   Numerically evaluate triple integra of fun(rho,z,phi)
    Q = integral3(fun,0,0.01,0.02,0.04,0,2*pi);
    fprintf('Q = %e C \n',Q)

