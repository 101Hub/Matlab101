function [ave, nvals] = calc_average(structure,field)
%CALC_AVERAGE Calculate the average of values in a field. 
% Function CALC_AVERAGE calculates the average value
% of the elements in a particular field of a structure 
% array.  It returns the average value and (optionally)
% the number of items averaged.
 
% Define variables:
%   arr       -- Array of values to average
%   ave       -- Average of arr
%   ii        -- Index variable
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    03/04/07    S. J. Chapman        Original code
%
% Check for a legal number of input arguments.
msg = nargchk(2,2,nargin);
error(msg);

% Create an array of values from the field
arr = [];
for ii = 1:length(structure)
   arr = [arr structure(ii).(field)];
end

% Calculate average
ave = mean(arr);

% Return number of values averaged
if nargout == 2
   nvals = length(arr);
end
