function question_4()
  t = [-5:0.05:5];

x = 1 + 1/4 * (exp(1i*t) + exp(-1i*t)) + 1/2 * (exp(2i*t) + exp(-2i*t)) + 1/3 * (exp(3i*t) + exp(-3i*t));
y = 1 + 1/2 * cos(t) + cos(2*t) + 2/3 * cos(3*t);

plot(t,x);
%plot(t,y,'r');
xlabel('t');
ylabel('x(t)');
title('x(t) = 1 + 1/2cost + cos2t + 2/3cos3t');
  
endfunction