%  Script file: calc_power.m
%
%  Purpose: 
%    To calculate and plot the power supplied to a load as 
%    as a function of the load resistance. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/03/07    S. J. Chapman        Original code 
%
% Define variables:
%   amps      -- Current flow to load (amps)
%   pl        -- Power supplied to load (watts)
%   rl        -- Resistance of the load (ohms)
%   rs        -- Internal resistance of the power source (ohms)
%   volts     -- Voltage of the power source (volts)

% Set the values of source voltage and internal resistance
volts = 120;
rs = 50;

% Create an array of load resistances
rl = 1:1:100;

% Calculate the current flow for each resistance
amps = volts ./ ( rs + rl );

% Calculate the power supplied to the load
pl = (amps .^ 2) .* rl;

% Plot the power versus load resistance
plot(rl,pl);
title('Plot of power versus load resistance');
xlabel('Load resistance (ohms)');
ylabel('Power (watts)');
grid on;
