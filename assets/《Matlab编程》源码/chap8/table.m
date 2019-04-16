%  Script file: table.m
%
%  Purpose: 
%    To create a table of square roots, squares, and
%    cubes. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    03/22/07    S. J. Chapman        Original code 
%
% Define variables:
%   cube         -- Cubes
%   ii           -- Index variable
%   square       -- Squares
%   square_roots -- Square roots
%   out          -- Output array

% Print the title of the table.
fprintf(' Table of Square Roots, Squares, and Cubes\n\n');    

% Print column headings
fprintf(' Number  Square Root    Square     Cube\n');
fprintf(' ======  ===========    ======     ====\n');

% Generate the required data
ii = 1:10;
square_root = sqrt(ii);
square = ii.^2;
cube = ii.^3;

% Create the output array
out = [ii' square_root' square' cube'];

% Print the data
for ii = 1:10
   fprintf ('  %2d   %11.4f   %6d   %8d\n',out(ii,:));
end
