%  Script file: ode45_test1.m
%
%  Purpose: 
%    This program solves a differential equation of the
%    form dy/dt + 2 * y = 0, with the initial condition 
%    y(0) = 1.
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

% Get a handle to the function that defines the
% derivative.
odefun_handle = @fun1;

% Solve the equation over the period 0 to 5 seconds
tspan = [0 5];

% Set the initial conditions
y0 = 1;

% Call the differential equation solver.
[t,y] = ode45(odefun_handle,tspan,y0);

% Plot the result
figure(1);
plot(t,y,'b-','LineWidth',2);
grid on;
title('\bfSolution of Differential Equation');
xlabel('\bfTime (s)');
ylabel('\bf\ity''');


