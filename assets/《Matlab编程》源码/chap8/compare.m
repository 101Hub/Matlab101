%  Script file: compare.m
%
%  Purpose: 
%    To compare binary and formatted I/O operations.  
%    This program generates an array of 10,000 random
%    values and writes it to disk both as a binary and
%    as a formatted file. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    03/22/07    S. J. Chapman        Original code 
%
% Define variables:
%   count     -- Number of values read / written
%   fid       -- File id
%   in_array  -- Input array
%   msg       -- Open error message
%   out_array -- Output array
%   status    -- Operation status
%   time      -- Elapsed time in seconds

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Generate the data array.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
out_array = randn(1,10000);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First, time the binary output operation.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reset timer
tic;

% Loop for 10 times
for ii = 1:10

   % Open the binary output file for writing.
   [fid,msg] = fopen('unformatted.dat','w');
   
   % Write the data
   count = fwrite(fid,out_array,'float64');
   
   % Close the file
   status = fclose(fid);

end

% Get the average time
time = toc / 10;
fprintf ('Write time for unformatted file = %6.3f\n',time);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Next, time the formatted output operation.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reset timer
tic;

% Loop for 10 times
for ii = 1:10

   % Open the formatted output file for writing.
   [fid,msg] = fopen('formatted.dat','wt');
   
   % Write the data
   count = fprintf(fid,'%23.15e\n',out_array);
   
   % Close the file
   status = fclose(fid);
end

% Get the average time
time = toc / 10;
fprintf ('Write time for formatted file =   %6.3f\n',time);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Time the binary input operation.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reset timer
tic;

% Loop for 10 times
for ii = 1:10

   % Open the binary file for reading.
   [fid,msg] = fopen('unformatted.dat','r');
   
   % Read the data
   [in_array, count] = fread(fid,Inf,'float64');
   
   % Close the file
   status = fclose(fid);

end

% Get the average time
time = toc / 10;
fprintf ('Read time for unformatted file =  %6.3f\n',time);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Time the formatted input operation.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reset timer
tic;

% Loop for 10 times
for ii = 1:10

   % Open the formatted file for reading.
   [fid,msg] = fopen('formatted.dat','rt');
   
   % Read the data
   [in_array, count] = fscanf(fid,'%f',Inf);
   
   % Close the file
   status = fclose(fid);

end

% Get the average time
time = toc / 10;
fprintf ('Read time for formatted file =    %6.3f\n',time);

