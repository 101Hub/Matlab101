%  Script file: stats_2.m
%
%  Purpose: 
%    To calculate mean and the standard deviation of 
%    an input data set containing an arbitrary number 
%    of input values.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/24/07    S. J. Chapman        Original code 
% 1. 01/24/07    S. J. Chapman        Correct divide-by-0 error if
%                                     0 or 1 input values given.
%
% Define variables:
%   n       -- The number of input samples
%   std_dev -- The standard deviation of the input samples
%   sum_x   -- The sum of the input values
%   sum_x2  -- The sum of the squares of the input values
%   x       -- An input data value
%   xbar    -- The average of the input samples

% Initialize sums.
n = 0; sum_x = 0; sum_x2 = 0;

% Read in first value
x = input('Enter first value: ');

% While Loop to read input values.
while x >= 0

   % Accumulate sums.
   n      = n + 1;
   sum_x  = sum_x + x;
   sum_x2 = sum_x2 + x^2;

   % Read in next value
   x = input('Enter next value:  ');

end

% Check to see if we have enough input data.
if n < 2   % Insufficient information

   disp('At least 2 values must be entered!');   

else % There is enough information, so
     % calculate the mean and standard deviation

   x_bar = sum_x / n;
   std_dev = sqrt( (n * sum_x2 - sum_x^2) / (n * (n-1)) );

   % Tell user.
   fprintf('The mean of this data set is: %f\n', x_bar);
   fprintf('The standard deviation is:    %f\n', std_dev);
   fprintf('The number of data points is: %f\n', n);
   
end
