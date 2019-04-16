%  Script file: test_ssort.m
%
%  Purpose: 
%    To read in an input data set, sort it into ascending
%    order using the selection sort algorithm, and to 
%    write the sorted data to the Command window.  This
%    program calls function "ssort" to do the actual 
%    sorting.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/02/07    S. J. Chapman        Original code 
%
% Define variables:
%   array  -- Input data array
%   ii     -- Index variable
%   nvals  -- Number of input values
%   sorted -- Sorted data array

% Prompt for the number of values in the data set
nvals = input('Enter number of values to sort:  ');

% Preallocate array
array = zeros(1,nvals);

% Get input values
for ii = 1:nvals

   % Prompt for next value
   string = ['Enter value ' int2str(ii) ':  '];
   array(ii) = input(string);
   
end

% Now sort the data
sorted = ssort(array);

% Display the sorted result.
fprintf('\nSorted data:\n');
for ii = 1:nvals
   fprintf(' %8.4f\n',sorted(ii));
end
