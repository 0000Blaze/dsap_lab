%default function
function question_2()
  a = 2; 
  w = 5;
  t = linspace(0,10,100);
  %calling signal function to plot signal
  fn_signal(a,w,t);         
endfunction
 
 %function of e^(-a*t) * (cos(w*t))
 function fn_signal(a,w,t)
  v = e.^(-a*t).*(cos(w*t));
  plot(t,v);
  grid on;
  title('Function e**(-a*t) * (cos(w*t))');
  xlabel('Time');
  ylabel('Amplitude');
 endfunction
