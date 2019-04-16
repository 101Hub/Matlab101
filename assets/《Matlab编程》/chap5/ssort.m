function out = ssort(a)
%SSORT Selection sort data in ascending order
% Function SSORT sorts a numeric data set into 
% ascending order.  Note that the selection sort
% is relatively inefficient.  DO NOT USE THIS
% FUNCTION FOR LARGE DATA SETS.  Use MATLAB's
% "sort" function instead.
 
% Define variables:
%   a        -- Input array to sort
%   ii       -- Index variable
%   iptr     -- Pointer to min value
%   jj       -- Index variable
%   nvals    -- Number of values in "a"
%   out      -- Sorted output array
%   temp     -- Temp variable for swapping

%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/02/07    S. J. Chapman        Original code 

% Get the length of the array to sort
nvals = size(a,2);

% Sort the input array
for ii = 1:nvals-1
 
   % Find the minimum value in a(ii) through a(n)
   iptr = ii;
   for jj = ii+1:nvals
      if a(jj) < a(iptr) 
         iptr = jj;
      end
   end
 
   % iptr now points to the minimum value, so swap a(iptr)  
   % with a(ii) if ii ~= iptr.
   if ii ~= iptr
      temp    = a(ii);
      a(ii)   = a(iptr);
      a(iptr) = temp;
   end
 
end
 
% Pass data back to caller
out = a;
