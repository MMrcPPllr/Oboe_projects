J=1
Kp=4.44e3
Kv=8.88e3
T=60/3600/50
s=tf('s')
W=Kp*Kv/(s^2+Kv*s+Kp*Kv)
G=Kp*Kv/s/(s+Kv);
Gz=c2d(G,T,'zoh')
Wz=c2d(W,T,'zoh')
z=tf('z',T),

Wz1=minreal(Gz/(1+Gz))
GR=z^-50/(1-z^-50)/Wz
GR1=z^-50/(1-z^-50)/Wz1

[n,d]=tfdata(Wz1,'verbose')
    n=n(2:3)
    
S=(1-z^-50)*(1-Wz1);
bode(S)
figure
bode(GR1)
