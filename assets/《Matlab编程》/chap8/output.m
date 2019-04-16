%  Script file: output.m
%
%  Purpose: 
%    To demonstrate opening an output file properly.    
%    This program checks for the existence of an output
%    file.  If it exists, the program checks to see if 
%    the old file should be deleted, or if the new data
%    should be appended to the old file.
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    03/24/07    S. J. Chapman        Original code 
%
% Define variables:
%   fid          -- File id
%   out_filename -- Output file name
%   yn           -- Yes/No response

% Get the output file name.
out_filename = input('Enter output filename: ','s');

% Check to see if the file exists.
if exist(out_filename,'file')
   
   % The file exists
   disp('Output file already exists.');
   yn = input('Keep existing file? (y/n) ','s');
   
   if yn == 'n'
      fid = fopen(out_filename,'wt');
   else
      fid = fopen(out_filename,'at');
   end

else

   % File doesn't exist
   fid = fopen(out_filename,'wt');
   
end

% Output data
fprintf(fid,'%s\n',date);

% Close file
fclose(fid);
