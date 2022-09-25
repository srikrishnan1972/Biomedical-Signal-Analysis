
% MATLAB PROGRAM vag.m
% Use this program to read the files vag1.dat and vag2.dat (one at a time)
% Run the program by entering at the MATLAB command line
% vag
% and provide the name of the input file to be read in response to the prompt

clear all           % clears all active variable
close all

%% Loading the vag file  %%
fnam = input('Enter the vag file name :','s');
fid = fopen(fnam);
vags = fscanf(fid,'%f ');
fs = 2000; %sampling rate
sze = length(vags);
time = [1 : sze]/fs;
figure;
plot(time,vags);
axis tight;
ylabel('VAG');
xlabel('Time in seconds');
