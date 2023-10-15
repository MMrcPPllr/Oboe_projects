mr = 0.095;
% Total length (m)
lr = 0.085;
%J_r = mr*lr^2/3; 
J_r = 5.7e-5;
br = 1.5e-3;
mp = 0.024;
% Total length (m)
Lp = 0.129;
% Pendulum center of mass (m)
lp = Lp/2;
% Moment of inertia about pivot (kg-m^2)
%Jp = mp*Lp^2/3;
Jp = 3.3e-5;
% Equivalent Viscous Damping Coefficient (N-m-s/rad)
bp = 5e-4; % damping tuned heuristically to match QUBE-Sero 2 response
% Gravity Constant
g = 9.81;



M = [J_r + mp*lr^2 -mp*lr*lp;
    mp*lr*lp Jp+mp*lp^2]

C = [br 0; 
    0 bp];

K = [0 0; 
    0 g*mp*lp];

%U = [0; tau];



A = [zeros(2) eye(2)
    -inv(M)*K -inv(M)*C];



