%% Livello parametrico:
%%%
clc
clear all
% ammette controllore stabilizzante? Uso formule date dal prof a lezione
syms A B M K_matrix C Jr mp lr lp br bp g C_tau D KT R
M = [(Jr+ mp*lr^2) -mp*lr*lp; -mp*lr*lp  (Jr + mp*lp^2)];
C_tau = [br 0;0 bp];
K_matrix = [0 0; 0 -g*mp*lp];

A = [0 0 1 0; 0 0 0 1; -M^(-1)*K_matrix -M^(-1)*C_tau];
B = [0 0;0 0;-M^(-1)];
C = [1 0 0 0; 0 1 0 0];
D = [0;0];

% Raggiungibilità
%Quale ingresso si sceglie?
B1= B(:,1);
B2= B(:,2);
A_2 = (A^2);
A_3 = (A^3);

R1=[A A*B1 A_2*B1 A_3*B1];
rango_R_1 = rank(R1)

%%%
%
R2=[A A*B2 A_2*B2 A_3*B2];
rango_R_2 = rank(R2)

% Osservabilità
C1= C(1,:);
C2= C(2,:);

O1 = [C1; C1*A; C1*A_2; C1*A_3];
rango_O_1 = rank(O1)
O2 = [C2; C2*A; C2*A_2; C2*A_3];
rango_O_2 = rank(O2)


%% DELLA QUANSER 
%% Motor
% Resistance
Rm = 8.4;
% Current-torque (N-m/A)
kt = 0.042;
% Back-emf constant (V-s/rad)
km = 0.042;
%
%% Rotary Arm
% Mass (kg)
mr = 0.095;
% Total length (m)
r = 0.085;
% Moment of inertia about pivot (kg-m^2)
Jr = mr*r^2/3;
% Equivalent Viscous Damping Coefficient (N-m-s/rad)
br = 1e-3; % damping tuned heuristically to match QUBE-Sero 2 response
%
%% Pendulum Link
% Mass (kg)
mp = 0.024;
% Total length (m)
Lp = 0.129;
% Pendulum center of mass (m)
l = Lp/2;
% Moment of inertia about pivot (kg-m^2)
Jp = mp*Lp^2/3;
% Equivalent Viscous Damping Coefficient (N-m-s/rad)
bp = 5e-5; % damping tuned heuristically to match QUBE-Sero 2 response
% Gravity Constant
g = 9.81;


% Find Total Inertia
Jt = Jr*Jp - mp^2*r^2*l^2;
% 
% State Space Representation
A = [0 0 1 0;
     0 0 0 1;
     0 mp^2*l^2*r*g/Jt  -br*Jp/Jt   -mp*l*r*bp/Jt 
     0  mp*g*l*Jr/Jt    -mp*l*r*br/Jt   -Jr*bp/Jt];
%
B = [0; 0; Jp/Jt; mp*l*r/Jt];
C = eye(2,4);
D = zeros(2,1);
%%%
% Add actuator dynamics
B = km * B / Rm;
A(3,3) = A(3,3) - km*km/Rm*B(3);
A(4,3) = A(4,3) - km*km/Rm*B(4);



rank_SYS = 4; % Co or Ob has full rank, that is, the rank is equal to the number of states in the state-space mode
SYS=ss(A,B,C,D);
Co = ctrb(SYS); %matrice di controllabilità
unco = length(A) - rank(Co) %Determine the number of uncontrollable states
Controllability=rank(Co)
Ob=obsv(SYS);
Osservability=rank(Ob)
unobsv = length(A) - rank(Ob) %Determine the number of unobservable states.
disp('Il sistema è apposto, quindi il problema è nelle matrici Q e R');

%% 