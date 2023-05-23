
%caso5
Q1 = diag([100,1,1,1]);
R1 = 2;

%%sistema discreto...
sys = ss(A,B,C,D)
sysd = c2d(sys, 0.002)


%attenzione usare A e B DEL SISTEMA DISCRETO!
dlqr(A,B,Q1,R1)     %---> basta solo questo???? WAAAT??