function seed(new_seed)
%SEED Set new seed for function RANDOM0
% Function SEED sets a new seed for function 
% RANDOM0.  The new seed should be a positive
% integer.
 
% Define variables:
%   iseed    -- Random number seed (global)
%   new_seed -- New seed
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/04/07    S. J. Chapman        Original code 

% Declare global values
global iseed            % Seed for random number generator

% Check for a legal number of input arguments.
msg = nargchk(1,1,nargin);
error(msg);

% Save seed
new_seed = round(new_seed);
iseed = abs(new_seed);
