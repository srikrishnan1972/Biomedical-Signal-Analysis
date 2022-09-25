% Sleep EEG data courtesy of Dr. Rajeev Agarwal
% see Agarwal R and Gotman J, "Computer-assisted sleep staging,"
% IEEE Transactions on Biomedical Engineering, 48(12):1412–1423, 2001
% read and select sleep EEG data
% each epoch has 5989 samples at 200 Hz
% 713 epochs available with sleep stage noted for each epoch
clear all; close all; clc;
fs = 200; % sampling frequency in Hz
ts = 1/fs; % sampling interval
% channels 1: EOGL-A2; 2: EOGR-A1; 3: EMG chin; 4: EEG C3-A2;
% 5: EEG C4-A1; 6: EEG O1-A2; 7: EEG O2-A1
% stage 0: awake (eyes closed? or open?)
% stages 1, 2, 3, 4: sleep stages
% stage 5: REM
% stage 9: undefined
load SleepEEGdata.mat
epochs = 713;
for i = 1:epochs
stage(i) = Epoch(1,i).Stage; % sleep stage
end
nepoch = 153; % select desired epoch or segment of EEG
nchannel = 4; % select desired channel of EEG
% read the selected portion of the EEG signal
eeg = Epoch(1,nepoch).Data(:,nchannel);
t = [1:length(eeg)]*ts; % time axis in seconds
str = sprintf('EEG sleep stage %d',stage(nepoch));
figure
plot(t, eeg)
title (str);
xlabel('time(s)')
ylabel('EEG (\mu V)')