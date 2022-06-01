function question_3()
  n = linspace(-2*pi,2*pi,50); 
  theta = [-2*pi:1:2*pi];
  a = linspace(-10,10,50);
  a = abs(a).'* e.^(theta);
  x = a.'.^n;
  stem(x); 
endfunction