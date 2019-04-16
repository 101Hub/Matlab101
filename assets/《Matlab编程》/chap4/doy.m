%  Script file: doy.m
%
%  Purpose: 
%    This program calculates the day of year corresponding 
%    to a specified date.  It illustrates the use switch
%    and for constructs. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/27/07    S. J. Chapman        Original code 
%
% Define variables:
%   day          -- Day (dd)
%   day_of_year  -- Day of year
%   ii           -- Loop index
%   leap_day     -- Extra day for leap year
%   month        -- Month (mm)
%   year         -- Year (yyyy)

% Get day, month, and year to convert
disp('This program calculates the day of year given the ');
disp('specified date.');
month = input('Enter specified month (1-12): ');
day   = input('Enter specified day(1-31):    ');
year  = input('Enter specified year(yyyy):   ');

% Check for leap year, and add extra day if necessary
if mod(year,400) == 0 
   leap_day = 1;          % Years divisible by 400 are leap years
elseif mod(year,100) == 0 
   leap_day = 0;          % Other centuries are not leap years
elseif mod(year,4) == 0
   leap_day = 1;          % Otherwise every 4th year is a leap year
else
   leap_day = 0;          % Other years are not leap years
end

% Calculate day of year by adding current day to the
% days in previous months.
day_of_year = day;
for ii = 1:month-1

   % Add days in months from January to last month
   switch (ii)
   case {1,3,5,7,8,10,12},
      day_of_year = day_of_year + 31;
   case {4,6,9,11},
      day_of_year = day_of_year + 30;
   case 2,
      day_of_year = day_of_year + 28 + leap_day;
   end

end

% Tell user
fprintf('The date %2d/%2d/%4d is day of year %d.\n', ...
         month, day, year, day_of_year);
