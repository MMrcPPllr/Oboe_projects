Jr = 5.7e-5;
Jp = 3.3e-5;
% Jr = 5.6e-5;
% Jp = 3.3e-5;

lr = 0.085;
Lp = 0.129;
lp = 0.5*Lp;

mp = 0.024;

g = 9.81;
bp = 5e-5;
br = 1e-3;

km = 0.042;
Rm = 8.4;

%%
%syms Jr Jp lr lp br bp g mp km Rm

M = [Jr + mp*lr^2 -mp*lr*lp;
    -mp*lr*lp Jp+mp*lp^2];

C = [br 0; 
    0 bp];

K = [0 0; 
    0 -g*mp*lp];


A = [zeros(2) eye(2)
    -inv(M)*K -inv(M)*C];

B = [0 0; 0 0; inv(M)];
B = B(:,1);





%test = -(br*(mp*lp^2 + Jp))/(Jr*mp*lp^2 + Jp*mp*lr^2 + Jp*Jr);

% inv_jm = (mp*lp^2 + Jp)/(Jr*mp*lp^2 + Jp*mp*lr^2 + Jp*Jr);
% test = (km/Rm)*inv_jm*(km^2/Rm)



%B = km * B / Rm;
%A(3,3) = A(3,3) - km*km/Rm*B(3);
%A(4,3) = A(4,3) - km*km/Rm*B(4);

A(3,3) = A(3,3) - km*km/Rm*B(3);
A(4,3) = A(4,3) - km*km/Rm*B(4);
B = km * B / Rm;



%% casi 18 e 19
% Q = [1 0 0 0
% 0 0 0 0
% 0 0 0 0
% 0 0 0 0];
% 
% O = [Q
% Q*A
% Q*A^2
% Q*A^3];
% 
% 
% 
%  Q = [0 0 0 0
% 0 1 0 0
% 0 0 1 0
% 0 0 0 1];
