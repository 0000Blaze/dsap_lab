function question_2()
  display('Select one of the options below');
  display(' 1.part a and b');
  display(' 2.part c');
  choice = input('Choose:');
  if choice == 1
    part_a();
  elseif choice == 2
    part_c();
  else
    display('Your have selected an invalid option');
  endif
endfunction

function part_a()
t = (-1:0.01:1)';

subplot(3,2,1)
C=2;a=4;
x = C.*exp(a*t);
plot(t,x,'LineWidth',3,'Color',[0,0.7,0.9])
title('Subplot 1: C and a both positive')

subplot(3,2,2)
C=-2;a=-4;
x = C.*exp(a*t);
plot(t,x,'LineWidth',3,'Color',[0,0.7,0.9])
title('Subplot 1: C and a both negative')

subplot(3,2,3)
C=2;a=-4;
x = C.*exp(a*t);
plot(t,x,'LineWidth',3,'Color',[0,0.7,0.9])
title('Subplot 1: C positive and a negative')

subplot(3,2,4)
C=-2;a=4;
x = C.*exp(a*t);
plot(t,x,'LineWidth',3,'Color',[0,0.7,0.9])
title('Subplot 1: C negative and a positive')

subplot(3,2,5)
C=2;a=0+4j;
x = C.*exp(a*t);
plot(t,real(x),'LineWidth',3,'Color',[0,0.7,0.9])
hold on;
plot(t,imag(x),'LineWidth',3,'Color',[0.7,0.7,0.9])
legend("Real Part","Imaginary Part")
title('Subplot 1: Taking a as pure imaginary')
endfunction

function part_c()
t = (-1:0.01:1)';
C=4;
w = 0.1*pi;
theta = 0.5*pi;


subplot(3,1,1);
r=-0.6;
x = C.*exp(r*t).*((cos(w*t+theta))+(sin(w*t+theta)).*1j);
plot(t,abs(x),'LineWidth',3,'Color',[0,0.7,0.9])
hold on;
plot(t,angle(x),'LineWidth',3,'Color',[0.7,0.7,0.9])
legend("Magnitude","Phase")
title('Subplot 1: When r<0')

subplot(3,1,2)
r=0;
x = C.*exp(r*t).*((cos(w*t+theta))+(sin(w*t+theta)).*1j);
plot(t,abs(x),'LineWidth',3,'Color',[0,0.7,0.9])
hold on;
plot(t,angle(x),'LineWidth',3,'Color',[0.7,0.7,0.9])
legend("Magnitude","Phase")
title('Subplot 1: When r=0')

subplot(3,1,3)
r=0.6;
x = C.*exp(r*t).*((cos(w*t+theta))+(sin(w*t+theta)).*1j);
plot(t,abs(x),'LineWidth',3,'Color',[0,0.7,0.9])
hold on;
plot(t,angle(x),'LineWidth',3,'Color',[0.7,0.7,0.9])
legend("Magnitude","Phase")
title('Subplot 1: When r>0')

endfunction
