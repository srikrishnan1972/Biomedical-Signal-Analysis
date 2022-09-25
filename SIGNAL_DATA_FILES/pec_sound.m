% Program to display PCG, ECG and CAROTID data and play the PCG
% sampling rate fs = 1000 Hz per channel

close all
clear all

% loading ascii file into an array
% give signal file number here as required
sig = load('pec1.dat');

% Separating pcg, ecg, and carotid signals
pcg = sig(:,1);
ecg = sig(:,2);
carotid = sig(:,3);
fs = 1000;
time = [1:length(pcg)]/fs;

%plot of signals
figure;
subplot(3,1,1);
plot(time, pcg);
ylabel('PCG')
axis tight;

subplot(3,1,2);
plot(time, ecg);
ylabel('ECG')
axis tight;

subplot(3,1,3);
plot(time, carotid);
ylabel('Carotid pulse')
xlabel('Time in seconds');
axis tight;

% Some of the datafiles have artifacts at the beginning and/or ending 
% of the recording session: delete such portions in your program.
% A loud and strange sound could affect your perception of the 
% immediately following sounds.
pcgx = pcg(4000:16000);
pcgs = interp(pcgx, 8);
pcgs = pcgs - mean(pcgs);
pcgs = pcgs / max(pcgs);

figure;
plot(pcgs);
axis tight;
sound(pcgs, 8000);

% if the "sound" command in MATLAB does not work in the lab
% try the following:
% auwrite(pcgs, 8000, 'pcg52.au')
% listen to pcg52.au using xmms or any other audio tool available

