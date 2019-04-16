function yprime = decay1(t,y)
%DECAY1 Calculates the decay rates of Thorium 227 and Radium 223.
% Function DECAY1 Calculates the rates of change of Thorium 227 
% and Radium 223 (yprime) for a given current concentration y.  
 
% Define variables:
%   t         -- Time (in days)
%   y         -- Vector of current concentrations
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    03/15/07    S. J. Chapman        Original code

% Set decay constants.
lambda_th = 0.03710636;
lambda_ra = 0.0606428;

% Calculate rates of decay
yprime = zeros(2,1);
yprime(1) = -lambda_th * y(1);
yprime(2) = -lambda_ra * y(2) + lambda_th * y(1);

