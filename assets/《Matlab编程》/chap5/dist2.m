function distance = dist2(x1, y1, x2, y2)
%DIST2 Calculate the distance between two points
% Function DIST2 calculates the distance between 
% two points (x1,y1) and (x2,y2) in a Cartesian
% coordinate system.
%
% Calling sequence:
%    distance = dist2(x1, y1, x2, y2)
 
% Define variables:
%   x1       -- x-position of point 1
%   y1       -- y-position of point 1
%   x2       -- x-position of point 2
%   y2       -- y-position of point 2
%   distance -- Distance between points

%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/01/07    S. J. Chapman        Original code 

% Calculate distance.
distance = sqrt((x2-x1).^2 + (y2-y1).^2);
