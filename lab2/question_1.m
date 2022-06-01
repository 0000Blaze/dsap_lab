function question_1()
  t = (-1:0.01:1)';

  impulse = t==0;
  unitstep = t>=0;
  ramp = t.*unitstep;
  rect = t.^2.*unitstep;

  plot(t,[impulse unitstep ramp rect]);
  grid on;
  title('Basic signals plot');
  xlabel('x axis');
  ylabel('y axis');
endfunction