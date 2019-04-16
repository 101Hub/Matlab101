function [mag, angle] = polar_value(x,y)
%POLAR_VALUE Converts (x,y) to (r,theta)
% Function POLAR_VALUE converts an input (x,y) 
% value into (r,theta), with theta in degrees.
% It illustrates the use of optional arguments.
 
% Define variables:
%   angle    -- Angle in degrees
%   msg      -- Error message
%   mag      -- Magnitude
%   x        -- Input x value
%   y        -- Input y value (optional)
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/03/07    S. J. Chapman        Original code 

% Check for a legal number of input arguments.
msg = nargchk(1,2,nargin);
error(msg);

% If the y argument is missing, set it to 0.
if nargin < 2
   y = 0;
end

% Check for (0,0) input arguments, and print out
% a warning message.
if x == 0 & y == 0
   msg = 'Both x and y are zero: angle is meaningless!';
   warning(msg);
end

% Now calculate the magnitude.
mag = sqrt(x.^2 + y.^2);

% If the second output argument is present, calculate 
% angle in degrees.
if nargout == 2
   angle = atan2(y,x) * 180/pi;
end
