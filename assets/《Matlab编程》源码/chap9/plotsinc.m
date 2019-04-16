%  Script file: plotsinc.m
%
%  Purpose: 
%    This program illustrates the use of handle graphics 
%    commands by creating a plot of sinc(x) from -3*pi to
%    3*pi, and modifying the characteristics of the figure,
%    axes, and line using the "set" function.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    04/02/07    S. J. Chapman        Original code
%
% Define variables:
%   hndl         -- Handle of line
%   x            -- Independent variable
%   y            -- sinc(x)

% Calculate sinc(x)
x = -3*pi:pi/10:3*pi;
y = sin(x) ./ x;

% Find the zero value and fix it up.  The zero is
% located in the middle of the x array.
index = fix(length(y)/2) + 1;
y(index) = 1;

% Plot the function.
hndl = plot(x,y);

% Now modify the figure to create a pink background,
% modify the axis to turn on y-axis grid lines, and 
% modify the line to be a 2-point wide orange line.
set(gcf,'Color',[1 0.8 0.8]);
set(gca,'YGrid','on');
set(hndl,'Color',[1 0.5 0],'LineWidth',3);
