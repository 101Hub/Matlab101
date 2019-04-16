%  Script file: timings.m
%
%  Purpose: 
%    This program calculates the time required to 
%    calculate the squares of all integers from 1 to
%    10,000 in four different ways:
%    1.  Using a for loop with an uninitialized output
%        array.
%    2.  Using a for loop with a pre-allocated output
%        array and NO JIT compiler.
%    3.  Using a for loop with a pre-allocated output
%        array and the JIT compiler.
%    4.  Using vectors.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/29/07    S. J. Chapman        Original code 
%
% Define variables:
%   ii, jj       -- Loop index
%   average1     -- Average time for calculation 1
%   average2     -- Average time for calculation 2
%   average3     -- Average time for calculation 3
%   average4     -- Average time for calculation 4
%   maxcount     -- Number of times to loop calculation
%   square       -- Array of squares

% Perform calculation with an uninitialized array 
% "square".  This calculation is done only once 
% because it is so slow.
maxcount = 1;               % Number of repetitions
tic;                        % Start timer
for jj = 1:maxcount        
   clear square             % Clear output array
   for ii = 1:10000       
     square(ii) = ii^2;     % Calculate square
   end
end
average1 = (toc)/maxcount;  % Calculate average time 

% Perform calculation with a pre-allocated array 
% "square", calling an external function to square
% the number.  This calculation is averaged over 10   
% loops.
maxcount = 10;              % Number of repetitions
tic;                        % Start timer
for jj = 1:maxcount        
   clear square             % Clear output array
   square = zeros(1,10000); % Pre-initialize array
   for ii = 1:10000       
     square(ii) = sqr(ii);  % Calculate square
   end
end
average2 = (toc)/maxcount;  % Calculate average time 

% Perform calculation with a pre-allocated array 
% "square".  This calculation is averaged over 100  
% loops.
maxcount = 100;             % Number of repetitions
tic;                        % Start timer
for jj = 1:maxcount        
   clear square             % Clear output array
   square = zeros(1,10000); % Pre-initialize array
   for ii = 1:10000       
     square(ii) = ii^2;     % Calculate square
   end
end
average3 = (toc)/maxcount;  % Calculate average time 

% Perform calculation with vectors.  This calculation 
% averaged over 1000 executions. 
maxcount = 1000;            % Number of repetitions
tic;                        % Start timer
for jj = 1:maxcount        
   clear square             % Clear output array
   ii = 1:10000;            % Set up vector
   square = ii.^2;          % Calculate square
end
average4 = (toc)/maxcount;  % Calculate average time 

% Display results
fprintf('Loop / uninitialized array        = %8.4f\n', average1);
fprintf('Loop / initialized array / no JIT = %8.4f\n', average2);
fprintf('Loop / initialized array / JIT    = %8.4f\n', average3);
fprintf('Vectorized                        = %8.4f\n', average4);
