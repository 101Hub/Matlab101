%  Script file: calc_decay.m
%
%  Purpose: 
%    This program calculates the amount of Thorium 227 and
%    Radium 223 left as a function of time, given an inital
%    concentration of 1 gram of Thorium 227 and no grams of
%    Radium 223.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    03/15/07    S. J. Chapman        Original code 
%
% Define variables:
%   odefun_handle -- Handle to function that defines the derivative
%   tspan         -- Duration to solve equation for
%   yo            -- Initial condition for equation
%   t             -- Array of solution times 
%   y             -- Array of solution values

% Get a handle to the function that defines the derivative.
odefun_handle = @decay1;

% Solve the equation over the period 0 to 100 days
tspan = [0 100];

% Set the initial conditions
y0(1) = 1000000;     % Atoms of Thorium 227
y0(2) = 0;           % Atoms of Radium 223

% Call the differential equation solver.
[t,y] = ode45(odefun_handle,tspan,y0);

% Plot the result
figure(1);
plot(t,y(:,1),'b-','LineWidth',2);
hold on;
plot(t,y(:,2),'k--','LineWidth',2);
title('\bfAmount of Thorium 227 and Radium 223 vs Time');
xlabel('\bfTime (days)');
ylabel('\bfNumber of Atoms');
legend('Thorium 227','Radium 223');
grid on;
hold off;


