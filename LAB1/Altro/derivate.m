syms l1 l2 th al th_dot al_dot

xdot = -l1*sin(th)*th_dot + l2*(cos(al)*sin(th)*al_dot + sin(al)*cos(th)*th_dot);
ydot = l1*cos(th)*th_dot - l2*(cos(al)*cos(th)*al_dot - sin(al)*sin(th)*th_dot);
zdot = -l2*sin(al)*al_dot;