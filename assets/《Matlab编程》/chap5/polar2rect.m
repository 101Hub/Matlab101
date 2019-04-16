function [x, y] = polar2rect(r,theta)
%POLAR2RECT Convert rectangular to polar coordinates 
% Function POLAR2RECT accepts the polar coordinates 
% (r,theta), where theta is expressed in degrees,
% and converts them into the rectangular coordinates
% (x,y).
%
% Calling sequence:
%   [x, y] = polar2rect(r,theta)

% Define variables:
%   r        -- Length of polar vector
%   theta    -- Angle of vector in degrees
%   x        -- x-position of point
%   y        -- y-position of point

%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/01/07    S. J. Chapman        Original code 

x = r * cos(theta * pi/180);
y = r * sin(theta * pi/180);
