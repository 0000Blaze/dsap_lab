Ts = 0.1;
fs = 1/Ts;
b=[1 0.1];
a=[1 0.2 9.01];
[bz,az] = impinvar(b,a,fs);
 
Ts1  = 0.5;
fs1 = 1/Ts1;
[bz1,az1] = impinvar(b,a,fs1);
 
impulse(b,a);
hold on;
dimpulse(bz,az); hold on;
dimpulse(bz1,az1);
legend('Analog Filter','Digital IIR Filter with T = 0.1s','Digital IIR Filter with T = 0.5s');