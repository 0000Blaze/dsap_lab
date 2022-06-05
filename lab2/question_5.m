function question_5()
wt = (0:0.01:2*pi)';
Vmax = 1;

%fundamental sinusoidal signal
subplot(3,2,1)
n=1;
V = Vmax*sin(n*wt);
Sum = V;
plot(wt,V)
title("fundamental sinusoidal signal")

subplot(3,2,2)
n=2;
V = Vmax*sin(n*wt);
Sum = Sum +V;
plot(wt,V)
title("2nd harmonic")

subplot(3,2,3)
n=3;
V = Vmax*sin(n*wt);
Sum = Sum +V;
plot(wt,V)
title("3rd Harmonic")

subplot(3,2,4)
n=4;
V = Vmax*sin(n*wt);
Sum = Sum +V;
plot(wt,V)
title("4th Harmonic")

subplot(3,2,5)
n=5;
V = Vmax*sin(n*wt);
Sum = Sum +V;
plot(wt,V)
title("5th Harmonic")

subplot(3,2,6)
plot(wt,Sum)
title("SUm of all signals")
endfunction