Adaptive Noise Cancellation using Adaptive Filters (MATLAB)
📌 Overview

This project implements an Adaptive Noise Cancellation (ANC) framework in MATLAB to remove noise from real-world signals using adaptive filtering techniques. The system evaluates and compares three widely used adaptive algorithms — LMS, NLMS, and RLS — based on their noise reduction performance, convergence behavior, and stability.

The project focuses on practical signal processing, not textbook-only demonstrations, and uses realistic noise conditions such as power-line interference and random noise.

🎯 Objectives

Design an adaptive noise cancellation system using MATLAB

Implement and compare:

Least Mean Squares (LMS)

Normalized LMS (NLMS)

Recursive Least Squares (RLS)

Evaluate algorithms using quantitative metrics

Analyze convergence speed, stability, and computational complexity

🧠 System Description

The ANC system operates using two inputs:

Primary Input (d[n]): Desired signal corrupted by noise

Reference Input (x[n]): Noise reference correlated with the noise in the primary input

The adaptive filter estimates the noise component, which is subtracted from the primary input to obtain a cleaned output signal.

🧩 Algorithms Implemented
1. Least Mean Squares (LMS)

Simple and computationally efficient

Convergence depends heavily on step size (μ)

Sensitive to input signal power

2. Normalized LMS (NLMS)

Normalizes step size using input signal power

Improved stability and faster convergence compared to LMS

3. Recursive Least Squares (RLS)

Fastest convergence

Excellent noise cancellation performance

Higher computational complexity and memory usage

📁 Project Structure
Adaptive_Noise_Cancellation/
│
├── data/
│   ├── clean_signal.mat
│   ├── noisy_signal.mat
│   └── noise_reference.mat
│
├── algorithms/
│   ├── lms_filter.m
│   ├── nlms_filter.m
│   └── rls_filter.m
│
├── metrics/
│   ├── snr_calc.m
│   ├── mse_calc.m
│
├── main.m
└── README.md

📊 Performance Metrics

The following metrics are used for evaluation:

Signal-to-Noise Ratio (SNR)
Measures noise reduction effectiveness

Mean Square Error (MSE)
Indicates steady-state performance

Convergence Behavior
Observed through error signal evolution
