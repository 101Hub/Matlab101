%  Script file: test_preallocate.m
%
%  Purpose: 
%    This program tests the creation of cell arrays with and
%    without preallocation.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    03/04/07    S. J. Chapman        Original code 
%
% Define variables:
%   a            -- Cell array
%   maxvals      -- Maximum values in cell array

% Create array without preallocation
clear all
maxvals = 50000;
tic
for ii = 1:maxvals
   a{ii} = ['Element ' int2str(ii)];
end
disp( ['Elapsed time without preallocation = ' num2str(toc)] );

% Create array with preallocation
clear all
maxvals = 50000;
tic
a = cell(1,maxvals);
for ii = 1:maxvals
   a{ii} = ['Element ' int2str(ii)];
end
disp( ['Elapsed time with preallocation    = ' num2str(toc)] );
