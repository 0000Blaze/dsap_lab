b = [0.0663,0.1989,0.1989,0.0663];
a = [1,-0.9349,0.5668,-0.1015];
%part a
freqz(b,a);   
[h,w] = freqz(b,a);
%part c
%plot(w/pi,abs(h)); %plots in linearized form to analyze the nature of 
%frequency response