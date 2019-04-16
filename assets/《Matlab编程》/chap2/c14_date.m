%  Script file: c14_date.m
%
%  Purpose: 
%    To calculate the age of an organic sample from the percentage 
%    of the original carbon 14 remaining in the sample.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/05/07    S. J. Chapman        Original code 
%
% Define variables:
%   age       -- The age of the sample in years
%   lamda     -- The radioactive decay constant for carbon-14,
%                in units of 1/years.
%   percent   -- The percentage of carbon 14 remaining at the time
%                of the measurement
%   ratio     -- The ratio of the carbon 14 remaining at the time
%                of the measurement to the original amount of 
%                carbon 14.

% Set decay constant for carbon-14
lamda = 0.00012097;            

% Prompt the user for the percentage of C-14 remaining.
percent = input('Enter the percentage of carbon 14 remaining:\n');

% Perform calculations
ratio = percent / 100;             % Convert to fractional ratio
age = (-1.0 / lamda) * log(ratio); % Get age in years

% Tell the user about the age of the sample.
string = ['The age of the sample is ' num2str(age) ' years.'];
disp(string);
