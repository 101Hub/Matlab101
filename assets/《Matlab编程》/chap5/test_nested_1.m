function res = test_nested_1

% This is the top level function.
% Define some variables.
a = 1; b = 2; x = 0; y = 9;

% Display variables before call to fun1
fprintf('Before call to fun1:\n');
fprintf('a, b, x, y = %2d %2d %2d %2d\n', a, b, x, y);

% Call nested function fun1
x = fun1(x);

% Display variables after call to fun1
fprintf('\nAfter call to fun1:\n');
fprintf('a, b, x, y = %2d %2d %2d %2d\n', a, b, x, y);

   % Declare a nested function 
   function res = fun1(y)

   % Display variables at start of call to fun1
   fprintf('\nAt start of call to fun1:\n');
   fprintf('a, b, x, y = %2d %2d %2d %2d\n', a, b, x, y);

   y = y + 5;
   a = a + 1;
   res = y;
   
   % Display variables at end of call to fun1
   fprintf('\nAt end of call to fun1:\n');
   fprintf('a, b, x, y = %2d %2d %2d %2d\n', a, b, x, y);

   end % function fun1

end % function test_nested_1


