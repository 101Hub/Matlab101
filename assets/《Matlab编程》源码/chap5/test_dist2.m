%  Script file: test_dist2.m
%
%  Purpose: 
%    This program tests function dist2. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/01/07    S. J. Chapman        Original code 
%
% Define variables:
%   ax     -- x-position of point a
%   ay     -- y-position of point a
%   bx     -- x-position of point b
%   by     -- y-position of point b
%   result -- Distance between the points

% Get input data.
disp('Calculate the distance between two points:');
ax = input('Enter x value of point a:   ');
ay = input('Enter y value of point a:   ');
bx = input('Enter x value of point b:   ');
by = input('Enter y value of point b:   ');

% Evaluate function
result = dist2 (ax, ay, bx, by);
 
% Write out result.
fprintf('The distance between points a and b is %f\n',result);
