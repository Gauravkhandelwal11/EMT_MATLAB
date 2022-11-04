%   At a point P (-4, 3, 6), the potential field was determined to be 𝑉 = 2𝑥2𝑦 − 5𝑧. Through suitable analysis, determine analytically the following at P (-4, 3, 6):
%   a) The electric potential
%   b) The electric field intensity
%   c) The direction of the determined field intensity
%   d) The electric flux density
%   e) The volume charge density
%   Compare your analytical solution with that developed through appropriate MATLAB
%   simulations.


    clc
    clear all

%   At the given point the potential field (V) is given by ( 2 x*x y )- 5z
%   Electric potential (V) at P :
    V = 2*(-4)*(-4)*3 - 5*(6);      
    X = ['Ans(a) Electric potential V(P) is:  ',num2str(V)];
    disp(X)


%   Electric field intensity (E) = - [dv/dr] = - div[V] = -divergence[V]
%   V = ( 2 x*x y )- 5z
%   -div[V]= -del/delx[V] ax - del/dely[V] by - del/delz[V] cz
%   = Ex ax + Ey by + Ez cz
%   Ux, Uy, Uz are unit vectors along x, y and z-axes
    ax=1; by=1; cz=1;
%   Ex = -del/delx[V]= -(4x*y)
%   Ey = -del/dely[V]= -(2x^2)
%   Ez = -del/delz[V]= -(-5)
%   E = - [(4 x*y) ax + (2 x^2) by - (5) cz]
%   The point at which potential was determined is P
%   P=(-4, 3, 6)
    Ex =-[ 4*(-4)*(3) ];
    Ey =-[ 2*(-4)*(-4) ];
    Ez =-[ -5 ];
%   Electric field at point P is given by: 
  
    X = ['Ans(b) Electric field E(P) is:    ',num2str(Ex),'ax   ',num2str(Ey),'by    ',num2str(Ez),'cz'];
    disp(X)


%   E(p)= 48 ax - 32 by +5 cz
%   Direction of electric field is given by the unit vector: 
%   U_dir = ( ExUx + EyUy +EzUz) / [square root (Ex^2 + Ey^2 + Ez^2]
%         = Ex/s Ux + Ey/s Uy +Ez/s Uz
%         = Uxe + Uye + Uze
%   Uxe, Uye, Uze are unit vectors along E(P)
    s=sqrt(Ex^2 + Ey^2 + Ez^2) ;
    Uxe = Ex/s ;
    Uye = Ey/s ;
    Uze = Ez/s ;
    X = ['Ans(c) Direction of E(P) is:   ',num2str(Uxe),'ax   ',num2str(Uye),'cy    ',num2str(Uze),'cz'];
    disp(X)


%   The electric flux density is given by:
%   D= epsilon0 * E(p)
%   D = [ 8.854 * 10^(-12) ] * [ ExUx - EyUy + EzUz ]
%     = DxUx + DyUy +DzUz
    Dx = [ 8.854 * 10^(-12) ] * Ex ;
    Dy = [ 8.854 * 10^(-12) ] * Ey ;
    Dz = [ 8.854 * 10^(-12) ] * Ez ;
    X = ['Ans(d) Electric flux density D is:   ',num2str(Dx),'ax  ',num2str(Dy),'by  ',num2str(Dz),'cz',];
    disp(X)


%   The volume charge density, Vd is given by:
%   Vd = div[D] = div[ epsilon0 * E ] = epsilon0 * div (E)
%      = epsilon0 * div (-4xy Ux -2x^2 Uy +5 Uz)

%   Vd = epsilon0 * [-(4y+4x) Ux*Ux - (4x) Uy*Uy + 0 Uz*Uz]
    Vd = [8.854*10^(-12)] * [- (+12-16) - (-16) + 0 ];
    X = ['Ans(e) Volume charge density Vd is    ',num2str(Vd)];
    disp(X)

