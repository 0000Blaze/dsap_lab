function question_2()
  display('Select one of the options below');
  display(' 1.part a');
  display(' 2.part b');
  display(' 3.part c');
  choice = input('Choose:');
  if choice == 1
    part_a();
  elseif choice == 2
    part_b();
  elseif choice == 3
    part_c();
  else
    display('Your have selected an invalid option');
  endif
endfunction

function part_a()
  t = -10:0.1:10;
  c = -5:0.5:5;
  b = -5:0.5:5;
  y = exp(a.' * t);
  x = c * y;
  plot(t,x)
  grid on;
  title('Plot for x = C* e**(a*t)')  
endfunction

function part_b()
  t = -10:0.1:10;
  c = -2.5:0.5:2.5;
  b = [2-5i 2-4i 1-3i 1-2i 1-1i 0 1+1i 1+2i 1+3i 1+4i 1+5i];
  a = imag(b);
  y = exp(a.' * t);
  x = c * y;
  plot(t,x)
  grid on;
  title('Plot for part b')  
endfunction

function part_c()
 display('Under construction');
endfunction
