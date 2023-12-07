function pvcs

close all

% ecgpvcs has two signals: ecg1 and ecg2
load ecgpvcs;

plot_ecg(ecg1);


%
% Uncomment the following 'keyboard' command if you want to access 
% the workspace variables from the command line. Then type the command 
% 'dbquit' to terminate the program.
%

% keyboard;

function plot_ecg(ecg)

%
% plot 10 strips per figure, each with 2,000 samples = 10 seconds
%

traces_per_figure = 10;
samples_per_trace = 2000;

N_samples = length(ecg);
N_traces = ceil(N_samples/samples_per_trace);
N_figures = ceil(N_traces/traces_per_figure);

traces_left = N_traces;
current_sample = 1;
for f = 1:N_figures
    figure;

    if (traces_left < traces_per_figure)
        traces_on_this_figure = traces_left;
    else
        traces_on_this_figure = traces_per_figure;
    end

    for k = 1:traces_on_this_figure
        subplot(traces_per_figure, 1, k);

        index_begin = current_sample;
        index_end = current_sample + samples_per_trace - 1;
        if (index_end > N_samples)
            index_end = N_samples;
        end

        plot(ecg(index_begin:index_end));
        axis tight;
        box off;
        axis off;

        current_sample = index_end + 1;
        traces_left = traces_left - 1;
    end
end


