A = [-(R/L) -(kE/L) ; kM/J -(Cv/J)];
B = [1/L ; 0];
C = [0 1];

Asimple = -((kE*kM)/(J*R)+Cv);
Bsimple = kM/(J*R);

sys = ss(A,B,C,0);
sys_simple = ss(Asimple,Bsimple,1,0);

[b,a]=ss2tf(A,B,C,0);
syms s;
transfer = poly2sym(b,s)/poly2sym(a,s);

[bsimple,asimple]=ss2tf(Asimple,Bsimple,1,0);
transfer_simple = poly2sym(bsimple,s)/poly2sym(asimple,s);