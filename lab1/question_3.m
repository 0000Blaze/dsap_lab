function question_3()
  a = 0;
  b = 1;
  c = 0;
  even = 0; %counting even numbers
  odd = 0;  %counting odd numbers
  x = [0];  %ploting variable for x axis
  y =[1];   %ploting variable for y axis
  display('The fibonacci points are:');
%looping criteria for sum less than 1000
  while c < 10000
    if (a+b)<10000
      display(strcat('(',(num2str(a)),',',(num2str(b)),')'));
     endif
%checking for first number
    if mod(a,2) == 0
      even = even + 1;
    else
      odd = odd + 1;
    endif
    c = a + b;
    a = b;
    b = c;
%vector add elements for plotting
    if c < 10000
      x(end + 1) = a;
      y(end + 1) = b;
    endif
  endwhile
  plot(x,y,'bo-');
  grid on;
  title('Fibonacci Series');
  xlabel('x axis');
  ylabel('y axis');
  display(strcat('Total even numbers:',num2str(even)));
  display(strcat('Total odd numbers:',num2str(odd)));
endfunction
