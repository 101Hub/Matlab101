%  Script file: calc_roots.m
%
%  Purpose: 
%    This program solves for the roots of a quadratic equation 
%    of the form a*x**2 + b*x + c = 0.  It calculates the answers
%    regardless of the type of roots that the equation possesses.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/12/07    S. J. Chapman        Original code 
%
% Define variables:
%   a            -- Coefficient of x^2 term of equation
%   b            -- Coefficient of x term of equation
%   c            -- Constant term of equation
%   discriminant -- Discriminant of the equation
%   imag_part    -- Imag part of equation (for complex roots)
%   real_part    -- Real part of equation (for complex roots)
%   x1           -- First solution of equation (for real roots)
%   x2           -- Second solution of equation (for real roots)

% Prompt the user for the coefficients of the equation
disp ('This program solves for the roots of a quadratic ');
disp ('equation of the form A*X^2 + B*X + C = 0. ');
a = input ('Enter the coefficient A: ');
b = input ('Enter the coefficient B: ');
c = input ('Enter the coefficient C: ');

% Calculate discriminant
discriminant = b^2 - 4 * a * c;

% Solve for the roots, depending on the value of the discriminant
if discriminant > 0 % there are two real roots, so...

   x1 = ( -b + sqrt(discriminant) ) / ( 2 * a );
   x2 = ( -b - sqrt(discriminant) ) / ( 2 * a );
   disp ('This equation has two real roots:');
   fprintf ('x1 = %f\n', x1);
   fprintf ('x2 = %f\n', x2);

elseif discriminant == 0  % there is one repeated root, so...

   x1 = ( -b ) / ( 2 * a );
   disp ('This equation has two identical real roots:');
   fprintf ('x1 = x2 = %f\n', x1);

else % there are complex roots, so ...

   real_part = ( -b ) / ( 2 * a );
   imag_part = sqrt ( abs ( discriminant ) ) / ( 2 * a );
   disp ('This equation has complex roots:');
   fprintf('x1 = %f +i %f\n', real_part, imag_part );
   fprintf('x1 = %f -i %f\n', real_part, imag_part );

end
