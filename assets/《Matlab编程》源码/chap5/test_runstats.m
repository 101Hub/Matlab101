%  Script file: test_runstats.m
%
%  Purpose: 
%    To read in an input data set andn calculate the 
%    running statistics on the data set as the values 
%    are read in.  The running stats will be written
%    to the Command window. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/05/07    S. J. Chapman        Original code 
%
% Define variables:
%   array  -- Input data array
%   ave    -- Running average
%   std    -- Running standard deviation
%   ii     -- Index variable
%   nvals  -- Number of input values
%   std    -- Running standard deviation

% First reset running sums
[ave std] = runstats('reset');

% Prompt for the number of values in the data set
nvals = input('Enter number of values in data set:  ');

% Get input values
for ii = 1:nvals

   % Prompt for next value
   string = ['Enter value ' int2str(ii) ':  '];
   x = input(string);
   
   % Get running statistics
   [ave std] = runstats(x);
   
   % Display running statistics
   fprintf('Average = %8.4f; Std dev = %8.4f\n',ave, std);
   
end
