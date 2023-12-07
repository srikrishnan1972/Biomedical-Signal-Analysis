clear all
close all
clc

x=load ('EMGforce2.txt');

t=x(:,1); % time in seconds with sampling rate = 2000 Hz
y1=x(:,2); % force in arbitrary units 

y2=x(:,3); % EMG signal in mV
y1= 100*(y1-min(y1))/(max(y1)-min(y1));  %normalize force to the range [0, 100]
y2=y2-mean(y2); %remove dc bias
figure; 
subplot(2,1,1);plot(t,y1);
axis tight
xlabel('Time (seconds)');
ylabel('Force (%MVC)')
subplot(2,1,2);plot(t,y2);
axis tight
xlabel('Time (seconds)');
ylabel('EMG amplitude (mV)');
axis tight;