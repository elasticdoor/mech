A = [-(R/L) -(kE/L) ; kM/J -(Cv/J)];
B = [1/L ; 0];
C = [0 1];

sys = ss(A,B,C,0);

[b,a]=ss2tf(A,B,C,0);
syms s;
transfer = poly2sym(b,s)/poly2sym(a,s);