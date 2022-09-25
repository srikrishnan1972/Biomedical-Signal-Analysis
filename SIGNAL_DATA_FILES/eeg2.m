
% MATLAB PROGRAM eeg2.m
% sampling rate 100 Hz
close all;
clear all;
eegf3 = load('eeg2-f3.dat');
fs = 100;
t = (1:length(eegf3))/fs;
subplot(11,1,1)
plot(t, eegf3)
axis tight;
axis off;
%title('f3');
eegf4 = load('eeg2-f4.dat');
subplot(11,1,2)
plot(t, eegf4)
axis tight;
axis off;
%title('f4');
eegc3 = load('eeg2-c3.dat');
subplot(11,1,3)
plot(t, eegc3)
axis tight;
axis off;
%title('c3'); 
eegc4 = load('eeg2-c4.dat');
subplot(11,1,4)
plot(t, eegc4)
axis tight;
axis off;
%title('c4'); 
eegp3 = load('eeg2-p3.dat');
subplot(11,1,5)
plot(t, eegp3)
axis tight;
axis off;
%title('p3'); 
eegp4 = load('eeg2-p4.dat');
subplot(11,1,6)
plot(t, eegp4)
axis tight;
axis off;
%title('p4'); 
eego1 = load('eeg2-o1.dat');
subplot(11,1,7)
plot(t, eego1)
axis tight;
axis off;
%title('o1'); 
eego2 = load('eeg2-o2.dat');
subplot(11,1,8)
plot(t, eego2)
axis tight;
axis off;
%title('o2'); 
eegt3 = load('eeg2-t3.dat');
subplot(11,1,9)
plot(t, eegt3)
axis tight;
axis off;
%title('t3');
eegt4 = load('eeg2-t4.dat');
subplot(11,1,10)
plot(t, eegt4)
axis tight;
axis off;
subplot(11,1,11)
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
