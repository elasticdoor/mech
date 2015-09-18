R = 1.45; % Ohm
L = 110e-6; %Henry
Cv = 1.3*10^(-3) *10^(-3)*60/(2*pi); %mNm/rpm -> Nm/(rad/s)
kE = 4.555 *10^(-3)*60/(2*pi); % mV/rpm -> V/(rad/s)
kM = 43.5*10^(-3); % Nm/A
J = 60 * 10^(-3) *10^(-4); % gcm^2 -> kg m^2

create_ss