function plotline(varargin)
%PLOTLINE Plot points specified by [x,y] pairs.
% Function PLOTLINE accepts an arbitrary number of
% [x,y] points and plots a line connecting them.  
% In addition, it can accept a line specification
% string, and pass that string on to function plot.
 
% Define variables:
%   ii        -- Index variable
%   jj        -- Index variable
%   linespec  -- String defining plot characteristics
%   msg       -- Error message
%   varargin  -- Cell array containing input arguments
%   x         -- x values to plot
%   y         -- y values to plot
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    03/05/07    S. J. Chapman        Original code

% Check for a legal number of input arguments.
% We need at least 2 points to plot a line...
msg = nargchk(2,Inf,nargin);
error(msg);

% Initialize values
jj = 0;
linespec = '';

% Get the x and y values, making sure to save the line
% specification string, if one exists.
for ii = 1:nargin
   
   % Is this argument an [x,y] pair or the line
   % specification?
   if ischar(varargin{ii})
   
      % Save line specification
      linespec = varargin{ii};
      
   else
   
      % This is an [x,y] pair.  Recover the values.
      jj = jj + 1;
      x(jj) = varargin{ii}(1);
      y(jj) = varargin{ii}(2);
      
   end
end

% Plot function.
if isempty(linespec)
   plot(x,y);
else
   plot(x,y,linespec);
end
