
%q = 1;


 Q1 = diag([10,5,.1,.5]);

%Q1 = diag([.1,.1,1,10]);
R1 = 1;


K = lqr(A,B,Q1,R1);


%%sistema discreto...
sys = ss(A,B,C,D)
sysd = c2d(sys, 0.002)
dlqr(A,B,Q1,R1)     %---> basta solo questo???? WAAAT??