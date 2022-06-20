b = [0.0663,0.1989,0.1989,0.0663];
a = [1,-0.9349,0.5668,-0.1015];

%part a
[h,w] = freqz(b,a);
figure(1);
plot(h)    
%the frequency response consistes of magnitude and phase response

%part b
figure(2);
plot(log(abs(h)))
grid on;
%the cutoff frequency was found to be 336.22 at -3db of the magnitude plot

%part c
figure(3)
plot(abs(h))
grid on;
%observing the nature of system we conclude it is low pass filter