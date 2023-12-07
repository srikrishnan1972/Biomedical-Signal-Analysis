%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Program name: plotpec.m
%%%
%%% syntax at the matlab prompt >> plotpec(fn, st, ed)
%%%
%%% fn is the data filename (must be in single quotes)
%%% st is the starting point and ed is the end point in samples
%%%
%%% Example: plotpec('pec1.dat', 2000, 3000) will plot the 
%%%          3 channel data from points 2000 to 3000
%%% The PCG signals in pec1.dat (adult male)  and pec52.dat (male subject, 23 years) are normal; 
%%% the PCG signal in pec22.dat has systolic murmur,
%%% and is of a patient suspected to have aortic stenosis (female, 11 years);
%%% the PCG signal in pec33.dat has systolic murmur,
%%% and is of a patient suspected to have pulmonary stenosis, ventricular septal defect,
%%% and pulmonary hypertension (female, 14 months).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function plotpec(pecfn,st,ed)


pec = load(pecfn);
% data file has samples in the order PCG, ECG, and CAROTID, one set per line
% one time instant per line at 1000 Hz per channel
% total duration of the signals varies from one example to another
pcg = pec(st:ed,1);
ecg = pec(st:ed,2);
car = pec(st:ed,3);

t = (st:ed)/1000;
% sampling rate = 1000 Hz

subplot(311)
plot(t, pcg)
ylabel('PCG')
subplot(312)
plot(t, ecg)
ylabel('ECG')
subplot(313)
plot(t, car)
ylabel('CAROTID')
xlabel('TIME IN SECONDS')
