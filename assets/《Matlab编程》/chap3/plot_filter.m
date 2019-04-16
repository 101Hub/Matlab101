%  Script file: plot_filter.m
%
%  Purpose: 
%    This program plots the amplitude and phase responses
%    of a low-padd RC filter. 
%
%  Record of revisions:
%      Date       Programmer          Description of change
%      ====       ==========          =====================
%    01/15/07    S. J. Chapman        Original code 
%
% Define variables:
%   amp       -- Amplitude response
%   C         -- Capacitiance (farads)
%   f         -- Frequency of input signal (Hz)
%   phase     -- Phase response
%   R         -- Resistance (ohms)
%   res       -- Vo/Vi

% Initialize R & C
R = 16000;               % 16 k ohms
C = 1.0E-6;              % 1 uF

% Create array of input frequencies
f = 1:2:1000;

% Calculate response
res = 1 ./ ( 1 + j*2*pi*f*R*C );

% Calculate amplitude response
amp = abs(res);

% Calculate phase response
phase = angle(res);

% Create plots
subplot(2,1,1);
loglog( f, amp );
title('Amplitude Response');
xlabel('Frequency (Hz)');
ylabel('Output/Input Ratio');
grid on;

subplot(2,1,2);
semilogx( f, phase );
title('Phase Response');
xlabel('Frequency (Hz)');
ylabel('Output-Input Phase (rad)');
grid on;
