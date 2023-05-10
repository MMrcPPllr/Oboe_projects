% % % % % % % Jr = 5.7e-5;
% % % % % % % Jp = 3.3e-5;
% % % % % % % % Jr = 5.6e-5;
% % % % % % % % Jp = 3.3e-5;
% % % % % % % 
% % % % % % % 
% % % % % % % 
% % % % % % % lr = r;
% % % % % % % lp = 0.5*Lp;

%%
syms Jr Jp lr lp br bp g mp km Rm

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



B = km * B / Rm;
A(3,3) = A(3,3) - km*km/Rm*B(3);
A(4,3) = A(4,3) - km*km/Rm*B(4);


