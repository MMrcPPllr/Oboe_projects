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



%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   LQ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
% varie condizioni date
condition = 1;
switch condition 
        case 1  %expensive vs cheap control cases
             Q1 = diag([1,1,1,1]);
             R1 = 2;

        case 2  %expensive vs cheap control cases
             Q1 = diag([1,1,1,1]);
             R1 = 1;

        case 3  %expensive vs cheap control cases
             Q1 = diag([1,1,1,1]);
             R1 = 0.5;

        case 4  %different weights for alpha
             Q1 = diag([10,1,1,1]);
             R1 = 2;
             
        case 5  %different weights for alpha
             Q1 = diag([100,1,1,1]);
             R1 = 2;
        case 6  %different weights for beta
             Q1 = diag([1,10,1,1]);
             R1 = 2;
        case 7  %different weights for beta
             Q1 = diag([1,100,1,1]);
             R1 = 2;
        case 8  %different weights for alpha dot
             Q1 = diag([1,1,10,1]);
             R1 = 2;
        case 9  %different weights for alpha dot
             Q1 = diag([1,1,100,1]);
             R1 = 2;     
        case 10  %different weights forbeta dot
             Q1 = diag([1,1,1,10]);
             R1 = 2;
        case 11  %different weights for beta dot
             Q1 = diag([1,1,1,100]);
             R1 = 2;    
             
        case 12  %only relative value are important when defining the weights
             Q1 = diag([1,1,1,1]);
             R1 = 2;
        case 13  %only relative value are important when defining the weights
             Q1 = diag([0.001,0.001,0.001,0.001]);
             R1 = 0.002;     
        case 14  %
             Q1 = diag([1,1,0,0]);
             R1 = 2;
        case 15  %
             Q1 = diag([10,10,0,0]);
             R1 = 0.002;      
        case 16  %
             Q1 = diag([1,1,1,1]);
             R1 = 2;
        case 17  %
             Q1 = diag([10,10,10,10]);
             R1 = 2;   
        case 18  %
             Q1 = diag([1,0,0,0]);
             R1 = .5;
        case 19  % 
             Q1 = diag([0,1,1,1]);
             R1 = .5;      
             
        otherwise
end

rank_SYS = 4; % Co or Ob has full rank, that is, the rank is equal to the number of states in the state-space mode
SYS=ss(A,B,C,D);
Co = ctrb(SYS); %matrice di controllabilità
unco = length(A) - rank(Co) %Determine the number of uncontrollable states
Controllability=rank(Co)
Ob=obsv(SYS);
Osservability=rank(Ob)
unobsv = length(A) - rank(Ob) %Determine the number of unobservable states.
disp('Il sistema è apposto, quindi il problema è nelle matrici Q e R');

R1^(-1) %è invertibile quindi R non è singolare

% The problem data must satisfy:
    %the pair (A,B) is stabilizable
    % R > 0 and Q- N*R^(-1)*N' >=0
    % (Q-N*R^(-1)*N', A-B*R^(-1)N') has no unobservable mode on the
    % immaginary axis (or unit cicle in discrete time)
% ma N come lo trovo? se premo la fuida mi mostra che è ma che valori ha?
% N e N' sono i prodotti pesati di stato e ingresso 
%% DALLA MICHIELETTO 
% (F,G) stabilizzabile e (F,H) rivelabile allora la soluzione della EDR
% converge ad un valore M_infinito costante



%% Da BAGGIO PBH Test
I=eye(4);
syms  s
A1= det(s*I-A)
PBH_test= rank([s*I-A B])
disp('E allora come cazzo si faaaaaaaaaaaaaaaaaaaaaaaaaaaaa se è sempre 4 aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');

K = lqr(A,B,Q1,R1);


autovalori = eig(A-B*K)

a1 = autovalori(1)
a2 = autovalori(2)
a3 = autovalori(3)
a4 = autovalori(4)

%Fjordan= jordan(F)
geometrica1= 4 - rank(a1*eye(4)-A);
geometrica2= 4 - rank(a2*eye(4)-A);
geometrica3= 4 - rank(a3*eye(4)-A);
geometrica4= 4 - rank(a4*eye(4)-A);






%% Livello parametrico:
%%%
% ammette controllore stabilizzante? Uso formule date dal prof a lezione
syms A B M K_matrix C Jt m2 l1 l2 b1 g tau_M tau_d
M = [(Jt+ m2*l1^2) -m2*l1*l2; -m2*l1*l2  (Jt + m2*l2^2)];
C = [b1 0;0 0];
K_matrix = [0 0 ; 0 -g*m2*l2];
u = [tau_M ; tau_d];
A = [0 0 1 0; 0 0 0 1; -M^(-1)*K_matrix -M^(-1)*C];
Asimplify= simplify(A);
B = [0 0;0 0; M^(-1)];
Bsimplify= simplify(B);
%% Raggiungibilità
%% propulsore 1
%%%
% 1 ingresso
B1 = [0; 0; (m2*l2^2 + Jt)/(Jt^2 + m2*Jt*l1^2 + m2*Jt*l2^2);  (l1*l2*m2)/(Jt^2 + m2*Jt*l1^2 + m2*Jt*l2^2)];
R1=[B1 A*B1] ;
XR_passo1_2 = rank(R1) ;
R1_2=[B1 A*B1 A^2*B1] ;
XR_passo1_3 = rank(R1_2) ;
R1_3=[B1 A*B1 A^2*B1  A^3*B1] ;
XR_passo1_4 = rank(R1_3) ;

A_quadro=A^2;
A_cubo=A^3;

% 2 ingresso
B2 = [0 ;0;  (l1*l2*m2)/(Jt^2 + m2*Jt*l1^2 + m2*Jt*l2^2);  (m2*l1^2 + Jt)/(Jt^2 + m2*Jt*l1^2 + m2*Jt*l2^2);];
R2=[B2 A*B2] ;
XR_passo2_2= rank(R2) ;
R2_2=[B2 A*B2 A^2*B2] ;
XR_passo2_3= rank(R2_2) ;
R2_3=[B2 A*B2 A^2*B2  A^3*B2] ;
XR_passo2_4= rank(R2_3); 

% completa
R2=[B A*B] ;
XR_passo2_2= rank(R2) ;
R2_2=[B A*B A^2*B] ;
XR_passo2_3= rank(R2_2) ;
R2_3=[B A*B A^2*B A^3*B] ;
XR_passo2_4= rank(R2_3) ;


 %% Osservabilità

