%  Script file: ball.m
%
%  Purpose: 
%    This program calculates the distance traveled by a ball 
%    thrown at a specified angle "theta" and a specified
%    velocity "vo" from a point on the surface of the Earth,
%    ignoring air friction and the Earth's curvature.  It 
%    calculates the angle yielding maximum range, and also
%    plots selected trajectories.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/30/07    S. J. Chapman        Original code 
%
% Define variables:
%   conv         -- Degrees to radians conv factor
%   gravity      -- Accel. due to gravity (m/s^2)
%   ii, jj       -- Loop index
%   index        -- Location of maximum range in array
%   maxangle     -- Angle that gives maximum range (deg)
%   maxrange     -- Maximum range (m)
%   range        -- Range for a particular angle (m)
%   time         -- Time (s)
%   theta        -- Initial angle (deg)
%   traj_time    -- Total trajectory time (s)
%   vo           -- Initial velocity (m/s)
%   vxo          -- X-component of initial velocity (m/s)
%   vyo          -- Y-component of initial velocity (m/s)
%   x            -- X-position of ball (m)
%   y            -- Y-position of ball (m)

%  Constants
conv = pi / 180;      % Degrees-to-radians conversion factor
g = -9.81;            % Accel. due to gravity
vo = 20;              % Initial velocity

%Create an array to hold ranges
range = zeros(1,91);

% Calculate maximum ranges
for ii = 1:91
   theta = ii - 1;
   vxo = vo * cos(theta*conv);
   vyo = vo * sin(theta*conv);
   max_time = -2 * vyo / g;
   range(ii) = vxo * max_time;
end

% Write out table of ranges
fprintf ('Range versus angle theta:\n');
for ii = 1:91
   theta = ii - 1;
   fprintf('  %2d    %8.4f\n',theta, range(ii));
end

% Calculate the maximum range and angle
[maxrange index] = max(range);
maxangle = index - 1;
fprintf ('\nMax range is %8.4f at %2d degrees.\n',...
         maxrange, maxangle);

% Now plot the trajectories
for ii = 5:10:85

   % Get velocities and max time for this angle
   theta = ii;
   vxo = vo * cos(theta*conv);
   vyo = vo * sin(theta*conv);
   max_time = -2 * vyo / g;

   % Calculate the (x,y) positions
   x = zeros(1,21);
   y = zeros(1,21);
   for jj = 1:21
      time = (jj-1) * max_time/20;
      x(jj) = vxo * time;
      y(jj) = vyo * time + 0.5 * g * time^2;
   end
   plot(x,y,'b');
   if ii == 5
      hold on; 
   end
end

% Add titles and axis lables
title ('\bfTrajectory of Ball vs Initial Angle \theta');
xlabel ('\bf\itx \rm\bf(meters)');
ylabel ('\bf\ity \rm\bf(meters)');
axis ([0 45 0 25]);
grid on;

% Now plot the max range trajectory
vxo = vo * cos(maxangle*conv);
vyo = vo * sin(maxangle*conv);
max_time = -2 * vyo / g;

% Calculate the (x,y) positions
x = zeros(1,21);
y = zeros(1,21);
for jj = 1:21
   time = (jj-1) * max_time/20;
   x(jj) = vxo * time;
   y(jj) = vyo * time + 0.5 * g * time^2;
end
plot(x,y,'r','LineWidth',3.0);
hold off
