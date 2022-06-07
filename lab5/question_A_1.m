b = [1 0.1];
a = [1 0.2 9.01];
Ts = 0.1;
fs = 1/Ts;
[Ha,Wa] = freqs(b,a,512);

%Converting the analog filter to discrete one
[bz,az] = impinvar(b,a,fs);
[Hz,Wz] = freqz(bz,az,512);
Ts1  = 0.5;
fs1 = 1/Ts1;
[bz1,az1] = impinvar(b,a,fs1);
[Hz1,Wz1] = freqz(bz1,az1,512);

%Frequency Response Comparison
plot(Wa/(2*pi),20*log10(abs(Ha)),'b-',Wz,20*log10(abs(Hz)),'r--',Wz1/(2*pi),20*log10(abs(Hz1)),'k:','LineWidth',2);
axis([0 1 -50 20]);

xlabel('Frequency (Hz)'), ylabel('Magnitude (dB)');
title('Magnitude Response Comparison');
legend('Analog Filter','Digital Filter with T = 0.1s','Digital Filter with T = 0.5s','Location','NorthEastOutside');