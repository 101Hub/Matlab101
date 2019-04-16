%  Script file: calc_roots2.m
%
%  Purpose:  
%    This program solves for the roots of a quadratic equation 
%    of the form a*x**2 + b*x + c = 0.  It calculates the answers
%    regardless of the type of roots that the equation possesses.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    02/24/07    S. J. Chapman        Original code 
%
% Define variables:
%   a            -- Coefficient of x^2 term of equation
%   b            -- Coefficient of x term of equation
%   c            -- Constant term of equation
%   discriminant -- Discriminant of the equation
%   x1           -- First solution of equation  
%   x2           -- Second solution of equation  

% Prompt the user for the coefficients of the equation
disp ('This program solves for the roots of a quadratic ');
disp ('equation of the form A*X^2 + B*X + C = 0. ');
a = input ('Enter the coefficient A: ');
b = input ('Enter the coefficient B: ');
c = input ('Enter the coefficient C: ');

% Calculate discriminant
discriminant = b^2 - 4 * a * c;

% Solve for the roots
x1 = ( -b + sqrt(discriminant) ) / ( 2 * a );
x2 = ( -b - sqrt(discriminant) ) / ( 2 * a );

% Display results
disp ('The roots of this equation are:');
fprintf ('x1 = (%f) +i (%f)\n', real(x1), imag(x1));
fprintf ('x2 = (%f) +i (%f)\n', real(x2), imag(x2));
