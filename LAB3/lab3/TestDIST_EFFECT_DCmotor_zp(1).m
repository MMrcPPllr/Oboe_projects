Jm=4e-6;
J1=0.6e-6;

J2=0.5*0.053*0.0248^2;
Jt=Jm+J1+J2;
Bm=1.5e-6 ;
Kt=0.042;
Rm=8.4;
Lm=1.16e-3;

%   Modello di stato 2x2
A=[0 1
    0 -0*(Bm+Kt^2/Rm)/Jt];
B=[0; Kt/Rm/Jt];
C=[1 0];

Ts=0.002
sysC=ss(A,B,C,0);
% modello a tempo discreto
sysD=c2d(sysC,Ts,'zoh');
[F,G,H,D]=ssdata(sysD);

%Primo caso: Stimatore costruito su Motore reale


Cs=eye(2);
Ts=0.002
sysCs=ss(A,B,Cs,0);

% Costruisco il modello discreto
sysDs=c2d(sysCs,Ts,'zoh');

[Fs,Gs,Hs,Ds]=ssdata(sysDs);

% Progetto il controllore ottimo

Q=[1 0;0 0];
R=0.01;
KK=dlqr(Fs,Gs,Q,R)

% Progetto lo stimatore per il sistema 2x2

L=(acker(Fs',[1 0]',[0.5 0.5]))'
Festar=Fs-L*[1 0]
Gestar=[Gs L]
% Lanciare la simulazione con dlqr_est e verificare gli errori
% dello stimatore 


pause % premere enter per continuare


% Valuto con le equazioni viste a lezione i valori delle stime a regime
DIST=.1
XX2=L(1)/L(2)*DIST-Ts/2*DIST
XX1=(DIST+KK(2)*XX2)/(-KK(1))
 
% Creo il sistema aumentato per lo stimatore con modello
% di ordine zero per il disturbo, che agisce all'ingresso
% Metto attrito nullo
% Usare il secondo schema simulink dlqr_est_2

A1=[0 1 0
    0 -0*(0+Kt^2/Rm)/Jt -Kt/Rm/Jt
    0 0 0]
B1= [0 Kt/Rm/Jt 0]';
C1=eye(3);
sysC1=ss(A1,B1,C1,0);
sysD1=c2d(sysC1,Ts,'zoh');
[F1,G1,H1,D1]=ssdata(sysD1)

L1=(acker(F1',[1 0 0]',[0.8 0.8 0.8]))'
Festar1=F1-L1*[1 0 0]
Gestar1=[G1 L1]
% Adesso posso lanciare la simulazione... e verifico che 
% le stime sono senza errori

%%%%%%
z=tf('z',Ts);
Wzn=([1 0]*((eye(2)*z-Fs+Gs*KK))^-1*Gs*KK(1))
Wz=minreal([1 0]*((eye(2)*z-Fs+Gs*KK))^-1*Gs*KK(1),0.01)

[n,d]=tfdata(Wz,'verbose')
n=n(2:3);
