%  Script file: position_object.m
%
%  Purpose: 
%    This program illustrates the positioning of graphics
%    graphics objects.  It creates a figure, and then places 
%    two overlapping sets of axes on the figure.  The first 
%    set of axes is placed in the lower left hand corner of
%    the figure, and contains a plot of sin(x).  The second 
%    set of axes is placed in the upper right hand corner of
%    the figure, and contains a plot of cos(x).  Then two
%    text strings are added to the axes, illustrating the 
%    positioning of text within axes.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    04/03/07    S. J. Chapman        Original code
%
% Define variables:
%   h1           -- Handle of sine line
%   h2           -- Handle of cosine line
%   ha1          -- Handle of first axes
%   ha2          -- Handle of second axes
%   x            -- Independent variable
%   y1           -- sin(x)
%   y2           -- cos(x)

% Calculate sin(x) and cos(x)
x = -2*pi:pi/10:2*pi;
y1 = sin(x);
y2 = cos(x);

% Create a new figure
figure;

% Create the first set of axes and plot sin(x).
% Note that the position of the axes is expressed 
% in normalized units.
ha1 = axes('Position',[.05 .05 .5 .5]);
h1 = plot(x,y1);
set(h1,'LineWidth',2);
title('\bfPlot of sin \itx');
xlabel('\bf\itx');
ylabel('\bfsin \itx');
axis([-8 8 -1 1]);

% Create the second set of axes and plot cos(x).
% Note that the position of the axes is expressed 
% in normalized units.
ha2 = axes('Position',[.45 .45 .5 .5]);
h2 = plot(x,y1);
set(h2,'LineWidth',2,'Color','r','LineStyle','--');
title('\bfPlot of cos \itx');
xlabel('\bf\itx');
ylabel('\bfsin \itx');
axis([-8 8 -1 1]);

% Create a text string attached to the line on the first
% set of axes.
axes(ha1);
text(-pi,0.0,'sin(x)\rightarrow','HorizontalAlignment','right');

% Create a text string in the lower left hand corner
% of the second set of axes.
axes(ha2);
text(-7.5,-0.9,'Test string 2');
