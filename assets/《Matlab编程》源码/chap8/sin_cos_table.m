fprintf('    Table of Cosines and Sines\n\n');
fprintf(' theta     cos(theta)  sin(theta)\n');
fprintf(' =====     ==========  ==========\n'); 
for ii = 0:0.1:1
   theta = pi * ii;
   fprintf('%7.4f %11.5f %11.5f\n', theta, cos(theta), sin(theta));
end