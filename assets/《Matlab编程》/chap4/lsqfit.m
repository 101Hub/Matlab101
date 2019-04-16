%  Script file: lsqfit.m
%
%  Purpose:
%    To perform a least-squares fit of an input data set
%    to a straight line, and print out the resulting slope
%    and intercept values.  The input data for this fit
%    comes from a user-specified input data file.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/30/07    S. J. Chapman        Original code 
%
% Define variables:
%   ii          -- Loop index
%   n_points    -- Number in input [x y] points
%   slope       -- Slope of the line
%   sum_x       -- Sum of all input x values
%   sum_x2      -- Sum of all input x values squared
%   sum_xy      -- Sum of all input x*y yalues
%   sum_y       -- Sum of all input y values
%   temp        -- Variable to read user input
%   x           -- Array of x values
%   x_bar       -- Average x value
%   y           -- Array of y values
%   y_bar       -- Average y value
%   y_int       -- y-axis intercept of the line

disp('This program performs a least-squares fit of an ');
disp('input data set to a straight line.');
n_points = input('Enter the number of input [x y] points: ');

% Read the input data
for ii = 1:n_points
   temp = input('Enter [x y] pair: ');
   x(ii) = temp(1);
   y(ii) = temp(2);
end

% Accumulate statistics
sum_x = 0;
sum_y = 0;
sum_x2 = 0;
sum_xy = 0;
for ii = 1:n_points
   sum_x  = sum_x + x(ii);                
   sum_y  = sum_y + y(ii);               
   sum_x2 = sum_x2 + x(ii)^2;           
   sum_xy = sum_xy + x(ii) * y(ii);         
end
 
% Now calculate the slope and intercept. 
x_bar = sum_x / n_points;
y_bar = sum_y / n_points;
slope = (sum_xy - sum_x * y_bar) / ( sum_x2 - sum_x * x_bar);
y_int = y_bar - slope * x_bar; 

% Tell user.
disp('Regression coefficients for the least-squares line:');
fprintf('  Slope (m)     = %8.3f\n', slope);
fprintf('  Intercept (b) = %8.3f\n', y_int);
fprintf('  No. of points = %8d\n', n_points);

% Plot the data points as blue circles with no 
% connecting lines.
plot(x,y,'bo');
hold on;

% Create the fitted line
xmin = min(x);
xmax = max(x);
ymin = slope * xmin + y_int;
ymax = slope * xmax + y_int;

% Plot a solid red line with no markers
plot([xmin xmax],[ymin ymax],'r-','LineWidth',2);
hold off;

% Add a title and legend
title ('\bfLeast-Squares Fit');
xlabel('\bf\itx');
ylabel('\bf\ity');
legend('Input data','Fitted line');
grid on
