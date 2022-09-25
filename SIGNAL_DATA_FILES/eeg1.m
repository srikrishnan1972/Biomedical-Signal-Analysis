% MATLAB PROGRAM eeg1.m
% sampling rate 100 Hz
close all;
clear all;
eegf3 = load('eeg1-f3.dat');
fs = 100;
t = (1:length(eegf3))/fs;
subplot(911)
plot(t, eegf3)
axis tight;
axis off;
%title('f3');
eegf4 = load('eeg1-f4.dat');
subplot(912)
plot(t, eegf4)
axis tight;
axis off;
%title('f4');
eegc3 = load('eeg1-c3.dat');
subplot(913)
plot(t, eegc3)
axis tight;
axis off;
%title('c3'); 
eegc4 = load('eeg1-c4.dat');
subplot(914)
plot(t, eegc4)
axis tight;
axis off;
%title('c4'); 
eegp3 = load('eeg1-p3.dat');
subplot(915)
plot(t, eegp3)
axis tight;
axis off;
%title('p3'); 
eegp4 = load('eeg1-p4.dat');
subplot(916)
plot(t, eegp4)
axis tight;
axis off;
%title('p4'); 
eego1 = load('eeg1-o1.dat');
subplot(917)
plot(t, eego1)
axis tight;
axis off;
%title('o1'); 
eego2 = load('eeg1-o2.dat');
subplot(918)
plot(t, eego2)
axis tight;
axis off;
%title('o2'); 
subplot(919)
zero = t;
zero(1)=1;
% plot 1-second markers
for i=2:length(t)
zero(i) = 0;
if rem(i,fs)==0 
zero(i) = 1;
end;
end;
plot(t, zero)
axis tight;
axis off;

