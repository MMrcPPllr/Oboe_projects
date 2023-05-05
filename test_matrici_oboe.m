Jr = 5.7e-5;
Jp = 3.3e-5;

lr = r;
lp = 0.5*Lp;

M = [Jr + mp*lr^2 mp*lr*lp;
    mp*lr*lp Jp+mp*lp^2];

C = [br 0; 
    0 bp];

K = [0 0; 
    0 -g*mp*lp];


A = [zeros(2) eye(2)
    -inv(M)*K -inv(M)*C];

B = [0 0; 0 0; inv(M)];
B = B(:,1);
