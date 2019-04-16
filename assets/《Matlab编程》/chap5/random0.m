function ran = random0(m,n)
%RANDOM0 Generate uniform random numbers in [0,1)
% Function RANDOM0 generates an array of uniform 
% random numbers in the range [0,1).  The usage
% is:
% 
% random0(m)    -- Generate an m x m array
% random0(m,n)  -- Generate an m x n array
 
% Define variables:
%   ii       -- Index variable
%   iseed    -- Random number seed (global)
%   jj       -- Index variable
%   m        -- Number of columns
%   msg      -- Error message
%   n        -- Number of rows
%   ran      -- Output array
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/04/07    S. J. Chapman        Original code 

% Declare global values
global iseed            % Seed for random number generator

% Check for a legal number of input arguments.
msg = nargchk(1,2,nargin);
error(msg);

% If the n argument is missing, set it to m.
if nargin < 2
   n = m;
end

% Initialize the output array
ran = zeros(m,n);

% Now calculate random values
for ii = 1:m
   for jj = 1:n
      iseed = mod(8121*iseed + 28411, 134456 ); 
      ran(ii,jj) = iseed / 134456;
   end
end
