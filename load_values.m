R = 1.45; % Ohm
L = 110e-6; %Henry
Cv = 1.3*10^(-3) *10^(-3)*60/(2*pi); %mNm/rpm -> Nm/(rad/s)
kE = 4.555 *10^(-3)*60/(2*pi); % mV/rpm -> V/(rad/s)
kM = 43.5*10^(-3); % Nm/A
J = 60 * 10^(-3) *10^(-4); % gcm^2 -> kg m^2

Kp = 1;
Kd = 0.0005;

create_ss

pregain = (1+dcgain(Kp*sys))/dcgain(Kp*sys);

rg = 0.0185;
rgr = 0.0163;
b = 0.006;
bc1 = 0.013;
bc2 = 0.0049;
rho = 8000;
n = 9;
kt = 739;
dt= 1.5;
dj = 1.5;
diam = [10  , 11  , 14  , 19.6, 27.7] *10^(-3);
L = [24.5, 19.6, 13.9, 13.1, 7   ] *10^(-3);

Jg1 = rho*pi*rg^4/32/(rg/rgr)^4*(9*b*n^2+bc1*n^2-36*b*n+52*b)/(n-1)^4;
Jg2 = rho*pi*rg^4/32/(rg/rgr)^4*(9*b*n^2+bc2*n^2-36*b*n+52*b)/(n-1)^4;
J3 = pi*rho/2 * sum(diam.^4.*L);
Jtot = Jg1 + Jg2/n + J3/(n^2);