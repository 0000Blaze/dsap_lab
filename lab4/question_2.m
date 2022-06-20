b = [0.0018,0.0073,0.011,0.007,0.008];
a = [1,-3.0544,3.8291,2.2925,0.55072];

%part a
[zeros,poles,gain] = tf2zp(b,a);
zeros
poles
gain
figure(1);
zplane(b,a);

%part b
[sos,g] = zp2sos(zeros,poles,gain);
sos
% the returned matrix i sof order 2x6
% format is 
%           b3 b2 b1 a0 a1 a2
%           b3 b2 b1 a0 a1 a2

%part c
%[h,w] = freqz(b,a);
%plot(abs(h));     %magnitude response
%plot(signal(h));  %phase response
%plot(w/pi,abs(h));
figure(2);
freqz(b,a);

%part d
%under construction