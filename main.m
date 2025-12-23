clc; clear;

addpath('algorithms');
addpath('metrics');
addpath('data');

load clean_signal.mat
load noisy_signal.mat
load noise_reference.mat

M = 32;
mu = 0.01;
lambda = 0.995;

[~,e_lms]  = lms_filter(noisy_signal,noise_reference,mu,M);
[~,e_nlms] = nlms_filter(noisy_signal,noise_reference,mu,M);
[~,e_rls]  = rls_filter(noisy_signal,noise_reference,lambda,M);

start = 1000;

snr_before = snr_calc(clean_signal(start:end), noisy_signal(start:end));
snr_lms    = snr_calc(clean_signal(start:end), e_lms(start:end));
snr_nlms   = snr_calc(clean_signal(start:end), e_nlms(start:end));
snr_rls    = snr_calc(clean_signal(start:end), e_rls(start:end));

disp(['SNR Before : ', num2str(snr_before)]);
disp(['SNR LMS    : ', num2str(snr_lms)]);
disp(['SNR NLMS   : ', num2str(snr_nlms)]);
disp(['SNR RLS    : ', num2str(snr_rls)]);

fs = 8000;
t = (0:length(clean_signal)-1)/fs;
N = 500;

figure;
plot(t(1:N),clean_signal(1:N),'k','LineWidth',1.2); hold on;
plot(t(1:N),e_lms(1:N),'b');
plot(t(1:N),e_nlms(1:N),'g');
plot(t(1:N),e_rls(1:N),'m');
legend('Clean','LMS','NLMS','RLS');
xlabel('Time (s)');
ylabel('Amplitude');
title('Adaptive Noise Cancellation');
grid on;
