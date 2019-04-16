%  Script file: simul.m
%
%  Purpose: 
%    This program solves a system of 8 linear equations in 8
%    unknowns (a*x = b), using both full and sparse matrices.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    03/03/07    S. J. Chapman        Original code 
%
% Define variables:
%   a            -- Coefficients of x (full matrix)
%   as           -- Coefficients of x (sparse matrix)
%   b            -- Constant coefficients (full matrix)
%   bs           -- Constant coefficients (sparse matrix)
%   x            -- Solution (full matrix)
%   xs           -- Solution (sparse matrix)

% Define coefficients of the equation a*x = b for
% the full matrix solution.
a = [  1.0  0.0  1.0  0.0  0.0  2.0  0.0 -1.0; ...
       0.0  1.0  0.0  0.4  0.0  0.0  0.0  0.0; ...
       0.5  0.0  2.0  0.0  0.0  0.0 -1.0  0.0; ...
       0.0  0.0  0.0  2.0  0.0  1.0  0.0  0.0; ...
       0.0  0.0  1.0  1.0  1.0  0.0  0.0  0.0; ...
       0.0  0.0  0.0  1.0  0.0  1.0  0.0  0.0; ...
       0.5  0.0  0.0  0.0  0.0  0.0  1.0  0.0; ...
       0.0  1.0  0.0  0.0  0.0  0.0  0.0  1.0];

b = [  3.0  2.0 -1.5  1.0 -2.0  1.0  1.0  1.0]'; 

% Define coefficients of the equation a*x = b for
% the sparse matrix solution.
as = sparse(a);
bs = sparse(b);

% Solve the system both ways
disp ('Full matrix solution:');
x = a\b

disp ('Sparse matrix solution:');
xs = as\bs

% Show workspace
disp('Workspace contents after the solutions:')
whos


