%  Script file: stats_3.m
%
%  Purpose: 
%    To calculate mean and the standard deviation of 
%    an input data set, where each input value can be 
%    positive, negative, or zero.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/27/07    S. J. Chapman        Original code 
%
% Define variables:
%   ii      -- Loop index
%   n       -- The number of input samples
%   std_dev -- The standard deviation of the input samples
%   sum_x   -- The sum of the input values
%   sum_x2  -- The sum of the squares of the input values
%   x       -- An input data value
%   xbar    -- The average of the input samples

% Initialize sums.
sum_x = 0; sum_x2 = 0;

% Get the number of points to input.
n = input('Enter number of points: ');

% Check to see if we have enough input data.
if n < 2   % Insufficient data

   disp ('At least 2 values must be entered.');

else % we will have enough data, so let's get it.
 
   % Loop to read input values.
   for ii = 1:n

      % Read in next value
      x = input('Enter value:  ');

      % Accumulate sums.
      sum_x  = sum_x + x;
      sum_x2 = sum_x2 + x^2;

   end

   % Now calculate statistics.
   x_bar = sum_x / n;
   std_dev = sqrt( (n * sum_x2 - sum_x^2) / (n * (n-1)) );

   % Tell user.
   fprintf('The mean of this data set is: %f\n', x_bar);
   fprintf('The standard deviation is:    %f\n', std_dev);
   fprintf('The number of data points is: %f\n', n);
   
end
