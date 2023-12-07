% 
% pcg3read.m
%
% Read the combined PCG/ECG/carotid pulse datafile
%

% Clear everything first
close all
clear all
clc

% Load the PCG, ECG, and carotid pulse data
% Sampling frequency is fs = 1000 Hz
sig = load('pec52.dat');
fs = 1000;

% Separating PCG, ECG, and carotid signals
pcg = sig(:,1);
ecg = sig(:,2);
carotid = sig(:,3);

clear sig;

% Plot all signals
N = length(pcg);
T = 1/fs;
t = [0 : (N - 1)] * T;

clear N T;

figure;
subplot(3,1,1);
plot(t, pcg);
ylabel('PCG');
title('PCG, ECG, and carotid pulse signals');
axis tight;

subplot(3,1,2);
plot(t, ecg);
ylabel('ECG');
axis tight;

subplot(3,1,3);
plot(t, carotid);
ylabel('Carotid pulse');
xlabel('Time in seconds');
axis tight;
