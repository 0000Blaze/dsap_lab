%default function name same as the file name with void return and no input variables
function question_1()
  for_n_is_3 = (fn_cal_fxn(3));
  for_n_is_7 = (fn_cal_fxn(7));
  display(strcat('For n=3 : ',num2str(for_n_is_3)));
  display(strcat('For n=7 : ',num2str(for_n_is_7)));
endfunction

%function for the given expression
%value is the return variable
%n is the input variable
function value = fn_cal_fxn(n)
  value = (1+(2/(n^2)))^n;
endfunction
