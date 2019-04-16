function [r, theta] = rect2polar(x,y)
%RECT2POLAR Convert rectangular to polar coordinates 
% Function RECT2POLAR accepts the rectangular coordinates 
% (x,y) and converts them into the polar coordinates
% (r,theta), where theta is expressed in degrees.
%
% Calling sequence:
%   [r, theta] = rect2polar(x,y)

% Define variables:
%   r        -- Length of polar vector
%   theta    -- Angle of vector in degrees
%   x        -- x-position of point
%   y        -- y-position of point

%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/01/07    S. J. Chapman        Original code 

r = sqrt( x.^2 + y .^2 );
theta = 180/pi * atan2(y,x);
