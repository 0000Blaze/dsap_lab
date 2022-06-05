function question_3()
 n = 0:100;
mag_a = 0.95;
theta = 0.1*pi;

a = mag_a * exp(j*theta);
x = a.^n;

subplot(2,2,1)
stem(n,abs(x),'LineWidth',3,'Color',[0,0.7,0.9])
xlabel("time");ylabel("Magnitude")
title('Subplot 1: Magnitude Plot')

subplot(2,2,2)
stem(n,angle(x),'LineWidth',3,'Color',[0,0.7,0.9])
xlabel("time");ylabel("Angle(Radians)")
title('Subplot 2: Phase plot')

subplot(2,2,3)
stem(n,real(x),'LineWidth',3,'Color',[0,0.7,0.9])
xlabel("time");ylabel("Amplitude")
title('Subplot 3: Real part of x(n) Plot')

subplot(2,2,4)
stem(n,imag(x),'LineWidth',3,'Color',[0,0.7,0.9])
xlabel("time");ylabel("Amplitude")
title('Subplot 4: Imaginary part of x(n) Plot') 
endfunction