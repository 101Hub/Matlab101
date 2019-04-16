function res = test_nested_1

% This is the top level function.
% Define some variables.
a = 1;
b = 2;
x = 0;
y = 9;

% Display variables before call to fun1
disp('Before call to fun1:')
disp(['a = ' num2str(a)]);
disp(['b = ' num2str(b)]);
disp(['x = ' num2str(x)]);
disp(['y = ' num2str(y)]);

% Call fun1
x = fun1(x);

% Display variables after call to fun1
disp(' ');
disp('After call to fun1:')
disp(['a = ' num2str(a)]);
disp(['b = ' num2str(b)]);
disp(['x = ' num2str(x)]);
disp(['y = ' num2str(y)]);

   % Declare a nested function 
   function res = fun1(y)
   res = y + a;
   a = a + 1;
   
   % Display variables inside call to fun1
   disp(' ');
   disp('Inside call to fun1:')
   disp(['a = ' num2str(a)]);
   disp(['b = ' num2str(b)]);
   disp(['x = ' num2str(x)]);
   disp(['y = ' num2str(y)]);

   end % function fun1

end % function test_nested_1


