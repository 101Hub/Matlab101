function fhandle = count_calls(initial_value)

% Save initial value in a local variable
% in the host function.
current_count = initial_value;

% Create and return a function handle to the
% nested function below.
fhandle = @increment_count;

   % Define a nested function to increment counter
   function count = increment_count
   current_count = current_count + 1;
   count = current_count;
   end % function increment_count
   
end % function count_calls
