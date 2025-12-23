clc; clear;

fs = 8000;
t = 0:1/fs:2;

% Clean signal
clean_signal = sin(2*pi*300*t)';

% True noise
powerline_noise = 0.2*sin(2*pi*50*t)';
white_noise = 0.05*randn(length(t),1);
true_noise = powerline_noise + white_noise;

% Noisy signal
noisy_signal = clean_signal + true_noise;

% Reference noise 
noise_reference = ...
    0.8*powerline_noise + ...
    0.3*white_noise + ...
    0.01*randn(length(t),1);

save('clean_signal.mat','clean_signal','fs');
save('noisy_signal.mat','noisy_signal');
save('noise_reference.mat','noise_reference');

disp('MAT files generated');
