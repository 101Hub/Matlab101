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
%    03/24/07    S. J. Chapman        Original code 
%
% Define variables:
%   count     -- number of values read
%   filename  -- Input file name
%   fid       -- File id
%   msg       -- Open error message
%   n         -- Number of input data pairs (x,y)
%   slope     -- Slope of the line
%   sum_x     -- Sum of all input X values
%   sum_x2    -- Sum of all input X values squared
%   sum_xy    -- Sum of all input X*Y values
%   sum_y     -- Sum of all input Y values
%   x         -- An input X value
%   x_bar     -- Average X value
%   y         -- An input Y value
%   y_bar     -- Average Y value
%   y_int     -- Y-axis intercept of the line

% Initialize sums
n = 0; sum_x = 0; sum_y = 0; sum_x2 = 0; sum_xy = 0;
x1 = []; y1 = [];

% Prompt user and get the name of the input file.
disp('This program performs a least-squares fit of an');
disp('input data set to a straight line. Enter the name');
disp('of the file containing the input (x,y) pairs:  ' );
filename = input(' ','s');

% Open the input file
[fid,msg] = fopen(filename,'rt');

% Check to see if the open failed.
if fid < 0 

   % There was an error--tell user.
   disp(msg);

else
 
   % File opened successfully. Read the (x,y) pairs from 
   % the input file.  Get first (x,y) pair before the
   % loop starts.
   [in,count] = fscanf(fid,'%g %g',2);
   
   while ~feof(fid)
      x = in(1);
      y = in(2);
      n      = n + 1;                  %
      sum_x  = sum_x + x;              % Calculate 
      sum_y  = sum_y + y;              %   statistics
      sum_x2 = sum_x2 + x.^2;          %
      sum_xy = sum_xy + x * y;         %
      x1(n) = x;
      y1(n) = y;

      % Get next (x,y) pair
      [in,count] = fscanf(fid,'%f',[1 2]);

   end
   
   % Close the file
   fclose(fid);
 
   % Now calculate the slope and intercept. 
   x_bar = sum_x / n;
   y_bar = sum_y / n;
   slope = (sum_xy - sum_x*y_bar) / (sum_x2 - sum_x*x_bar);
   y_int = y_bar - slope * x_bar; 
 
   % Tell user.
   fprintf('Regression coefficients for the least-squares line:\n');
   fprintf('   Slope (m)     = %12.3f\n',slope);
   fprintf('   Intercept (b) = %12.3f\n',y_int);
   fprintf('   No of points  = %12d\n',n);
   
   % Now plot this data set
   figure(1);
   plot(x1,y1,'bo','LineWidth',2);
   hold on;
   
   % Now plot the fitted line
   x2 = x1;
   y2 = slope .* x2 + y_int;
   plot(x2,y2,'r-','LineWidth',2);
   hold off;
   
   % Title and labels
   title ('\bfLeast-Squares Fit');
   xlabel ('\bf\itx');
   ylabel ('\bf\ity');
   grid on;

end
