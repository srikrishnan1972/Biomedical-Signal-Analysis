
% MATLAB PROGRAM ecgpvc.m
clear all
close all
ecg = load ('ecgpvc.dat');
%plot 10 strips per figure, each strip with 2,000 samples = 10 seconds
%the total signal duration is 50,000 samples (250 seconds)  
%sampling rate fs = 200 Hz
figure;
i=1;
for k=1:10
subplot(10,1,k);
plot(ecg(i:i+1999));
axis tight;
box off;
axis off;
i=i+2000;
end;
figure;
for k=1:10 
subplot(10,1,k);
plot(ecg(i:i+1999));
axis tight; 
box off; 
axis off;
i=i+2000;
end;
figure;
for k=1:5 
subplot(10,1,k);
plot(ecg(i:i+1999));
axis tight; 
box off; 
axis off;
i=i+2000;
end;

