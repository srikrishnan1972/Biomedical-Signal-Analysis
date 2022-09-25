
% MATLAB PROGRAM emg_dog2.m
clear all               % clears all active variables
close all

emg = load('emg_dog2.dat');
fs1 = 10000; %sampling rate for emg
emg = emg*1000/20; % gain = 20,000; emg now in micro volts

slen1 = length(emg);
t1=[1:slen1]/fs1; % time axis at 10,000 Hz
figure
plot(t1, emg)
axis tight;
xlabel('Time in seconds');
ylabel('EMG in microvolts');

% envelope of EMG obtained using a full-wave rectifier and a modified Bessel filter
env = load('emg_dog2_env.dat');
fs2 = 1000; % sampling rate for envelope and air flow channels
slen2 = length(env);
t2=[1:slen2]/fs2; % time axis at 1,000 Hz

% inspiratory airflow measured with a pneumo-tachograph, in liters/second
flow = load('emg_dog2_flo.dat');

figure;
plot(t2, env);
ylabel('Filtered EMG envelope');
xlabel('Time in seconds');
axis tight;


figure;
plot(t2, flow);
ylabel('Air flow in liters/second');
xlabel('Time in seconds');
axis tight;

figure
subplot(311)
plot(t1, emg)
axis off
subplot(312)
plot(t2, env)
axis off
subplot(313)
plot(t2, flow)
axis off


