%
% Program to load and read cortical evoked potentials related to
% electrical stimulation of the esophagus
%
% Data courtesy of Dr. M.V. Kamath,
% McMaster University, Hamilton, ON, Canada.
%

% Clear everything before starting
close all
clear all
clc

% Read signal data in the order of stimulation
load E11
load E22
load E33
load E44
load E55
load E66
load E77
load E88
load E99
load E1010
load E1111
load E1212
load E1313
load E1414
load E1515
load E1616
load E1717
load E1818
load E1919
load E2020
load E2121
load E2222
load E2323
load E2424

d(:,1) = E11;
d(:,2) = E22;
d(:,3) = E33;
d(:,4) = E44;
d(:,5) = E55;
d(:,6) = E66;
d(:,7) = E77;
d(:,8) = E88;
d(:,9) = E99;
d(:,10) = E1010;
d(:,11) = E1111;
d(:,12) = E1212;
d(:,13) = E1313;
d(:,14) = E1414;
d(:,15) = E1515;
d(:,16) = E1616;
d(:,17) = E1717;
d(:,18) = E1818;
d(:,19) = E1919;
d(:,20) = E2020;
d(:,21) = E2121;
d(:,22) = E2222;
d(:,23) = E2323;
d(:,24) = E2424;

% Parameters of the data acquisition
fs = 1000;     % sampling rate
gain = 10000;  % amplifier gain
T = 1.0/fs;    % sampling interval in seconds
N = size(d,1); % number of samples in each signal
t = [1:N] * T; % time axis in seconds: common to all signals

%
% Plot multiple ERPs in the same figure
%
k_min = 1;              % first signal to be plotted
k_max = 4;              % last signal to be plotted
M = k_max - k_min + 1;   % number of signals to be plotted

figure;
plot_number = 1;
for k = k_min:k_max
    %
    % Extract the current signal from the matrix
    %
    % Note to students:
    % This step is not strictly necessary: d(:,k) could have been used
    % directly in the code below. This data extraction step is here just
    % for greater clarity.
    %
    y_k = d(:,k);

    % Plot the current signal in the proper subplot
    subplot(M, 1, plot_number);
    plot(t, y_k, 'k-');
    xlabel('Time in seconds');
    ylabel('ERP * 10000 V');
    axis tight;

    % Uncomment the line below to prevent the appearance of the
    % Cartesian axis:
    %
    % axis off;

    plot_number = plot_number + 1;
end



