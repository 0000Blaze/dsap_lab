function question_4()
  x = linspace(0,100,100);
  %calling signal function to plot signal
  fn_plotter(x);         
endfunction
 
 %function of (x^2+2x+3)/(x+3)
 function fn_plotter(x)
  v = (x.^2 .+ 2.*x .+ 3)./(x.+3);
  plot(x,v);
  grid on;
  title('Function (x^2+2x+3)/(x+3)');
  xlabel('x');
  ylabel('f(x)');
 endfunction