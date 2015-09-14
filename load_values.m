R = 1.45; % Ohm
L = 110*10^(-6); %Henry
Cv = 1.3*10^(-3) *10^(-3) *60; %mNm/rpm -> Nms
kE = 4.555 *10^(-3) *60; % mV/rpm -> Vs
kM = 43.5*10^(-3); % Nm/A
J = 60 * 10^(-3) *10^(-4); % gcm^2 -> kg m^2

%Load simulation arrays

dt = 0.001; % delta t of the simulation time (s)
Tmax = 10;   % simulation stop time (s)
period = 10; % period of the input square wave (s)
duty = 0.1; % duty cycle of the input square wave (0 - 1)
amp = 24;   % amplitude of the input square wave (V)

t = 0:dt:Tmax;
u = zeros(1,max(size(t)));
n=max(size(u));
for i=1:n
    if(mod(i,(period/dt)) < (floor((period/dt)*duty)))    %aw yea bros, check this out
        u(i) = amp;
    end
end
