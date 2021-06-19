syms t(x)
syms x
syms f(x)
h=500;
pi=3.1415;
f(x)=dsolve(1297.74*diff(t)==500*x-h*12.5*pi*(t-((h*12.5*pi*t+20*4186)/(4186+h))),t(0)==25);
f(x)=simplify(f(x));
eq1=(f(x)==80);
x0=int8(solve(eq1,x))






