d1=44.45;
d2=482.6;
d3=525;
r=500;
h=12000;
Vy=pi*r*r*h;
Vc=d1*d2*d3;
s1=d1*d2;
s2=d2*d3;
s3=d1*d3;
sr=pi*r*r;
n=Vy/Vc;
c=[-1;-1;-1];
a=[d1,d2,d3;s2,s3,s1;1,1,1];
b=[h;sr;n];
[x,y]=linprog(c,a,b,[],[],zeros(3,1))




