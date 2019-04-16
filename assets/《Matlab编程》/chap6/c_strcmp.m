function result = c_strcmp(str1,str2) 
%C_STRCMP Compare strings like C function "strcmp"
% Function C_STRCMP compares two strings, and returns
% a -1 if str1 < str2, a 0 if str1 == str2, and a 
% +1 if str1 > str2.
 
% Define variables:
%   diff      -- Logical array of string differences
%   msg       -- Error message
%   result    -- Result of function
%   str1      -- First string to compare
%   str2      -- Second string to compare
%   strings   -- Padded array of strings
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/25/07    S. J. Chapman        Original code 

% Check for a legal number of input arguments.
msg = nargchk(2,2,nargin);
error(msg);

% Check to see if the arguments are strings 
if ~(isstr(str1) & isstr(str2))
   error('Both str1 and str2 must both be strings!')
else

   % Pad strings
   strings = strvcat(str1,str2);
   
   % Compare strings
   diff = strings(1,:) ~= strings(2,:);
   if sum(diff) == 0
   
      % Strings match, so return a zero!
      result = 0;
   else
      % Find first difference between strings
      ival = find(diff);
      if strings(1,ival(1)) > strings(2,ival(1))
         result = 1;
      else
         result = -1;
      end
   end
end
