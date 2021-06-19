syms x
syms w
syms A
y=A*w*cos(w*x)^2+1;
y=sqrt(y);
up=pi/(2*w);
fy=int(y,0,up)

