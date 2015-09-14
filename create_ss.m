A = [-(L/R) -(kE/L) ; kM/J -(Cv/J)];
B = [1/L ; 0];
C = [0 1];

sys = ss(A,B,C,0);