% MATLAB PROGRAM safety.m
% sampling rate of the 'safety' speech signal is 8000 Hz (male speaker)
close all
clear all
soundx = wavread('safety.wav');    %% converts the sound from wave to ascii format
fs = 8000;
len = length(soundx);
x = (1:length(soundx))/fs;    %% scaling the x axis to the actual scale
figure;
plot(x, soundx)
axis tight
xlabel('Time in seconds');
ylabel('Amplitude');
title('Sound waveform SAFETY');
sound(soundx) % to play the wav file as sound             
