
% MATLAB PROGRAM ecg_hfn.m
clear all               % clears all active variables
close all

ecg = load('ecg_hfn.dat');
fs = 1000; %sampling rate = 1000 Hz

slen = length(ecg);
t=[1:slen]/fs;
figure
plot(t, ecg)
axis tight;
xlabel('Time in seconds');
ylabel('ECG');

