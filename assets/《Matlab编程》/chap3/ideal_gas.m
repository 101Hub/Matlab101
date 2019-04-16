%  Script file: ideal_gas.m
%
%  Purpose: 
%    This program plots the pressure versus volume of an
%    ideal gas. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/16/07    S. J. Chapman        Original code 
%
% Define variables:
%   n         -- Number of atoms (mol)
%   P         -- Pressure (kPa)
%   R         -- Ideal gas constant (L kPa/mol K)
%   T         -- Temperature (K)
%   V         -- volume (L)

% Initialize nRT
n = 1;                   % Moles of atoms
R = 8.314;               % Ideal gas constant
T = 273;                 % Temperature (K)

% Create array of input pressures.  Note that this
% array must be quite dense to catch the major
% changes in volume at low pressures.
P = 1:0.1:1000;

% Calculate volumes
V = (n * R * T) ./ P;

% Create first plot
figure(1);
loglog( P, V, 'r-', 'LineWidth', 2 );
title('\bfVolume vs Pressure in an Ideal Gas');
xlabel('\bfPressure (kPa)');
ylabel('\bfVolume (L)');
grid on;
hold on;

% Now increase temperature 
T = 373;                 % Temperature (K)

% Calculate volumes
V = (n * R * T) ./ P;

% Add second line to plot
figure(1);
loglog( P, V, 'b--', 'LineWidth', 2 );
hold off;

% Add legend
legend('T = 273 K','T = 373 K');




