%  Script file: binary_io.m
%
%  Purpose: 
%    To illustrate the use of binary i/o functions. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    03/21/07    S. J. Chapman        Original code 
%
% Define variables:
%   count     -- Number of values read / written
%   fid       -- File id
%   filename  -- File name
%   in_array  -- Input array
%   msg       -- Open error message
%   out_array -- Output array
%   status    -- Operation status

% Prompt for file name
filename = input('Enter file name:  ','s');

% Generate the data array
out_array = randn(1,10000);

% Open the output file for writing.
[fid,msg] = fopen(filename,'w');

% Was the open successful?
if fid > 0

   % Write the output data.
   count = fwrite(fid,out_array,'float64');
   
   % Tell user
   disp([int2str(count) ' values written...']);
   
   % Close the file
   status = fclose(fid);
   
else
   
   % Output file open failed.  Display message.
   disp(msg);
   
end

% Now try to recover the data.  Open the
% file for reading.
[fid,msg] = fopen(filename,'r');

% Was the open successful?
if fid > 0

   % Read the input data.
   [in_array, count] = fread(fid,[100 100],'float64');
   
   % Tell user
   disp([int2str(count) ' values read...']);
   
   % Close the file
   status = fclose(fid);
   
else
   
   % Input file open failed.  Display message.
   disp(msg);
   
end
