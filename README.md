# Adaptive Noise Cancellation using Adaptive Filters (MATLAB)

## 📌 Overview
This project presents the design and implementation of an **Adaptive Noise Cancellation (ANC) framework** in MATLAB for removing noise from real-world signals using adaptive filtering techniques. The framework implements and systematically compares three widely used adaptive algorithms — **Least Mean Squares (LMS), Normalized Least Mean Squares (NLMS), and Recursive Least Squares (RLS)** — based on their **noise reduction performance, convergence behavior, stability, and computational complexity**.

The project focuses on **practical signal processing scenarios** rather than idealized textbook examples and incorporates **realistic noise conditions**, such as **power-line interference and random noise**, to evaluate algorithm effectiveness.

---

## 🎯 Objectives
- Design and implement an adaptive noise cancellation system using MATLAB  
- Implement and compare the following adaptive filtering algorithms:
  - Least Mean Squares (LMS)
  - Normalized Least Mean Squares (NLMS)
  - Recursive Least Squares (RLS)
- Evaluate algorithm performance using **quantitative metrics**
- Analyze **convergence speed, stability, and computational complexity**

---

## 🧠 System Description
The adaptive noise cancellation system operates using two input signals:

- **Primary Input (d[n])**  
  Desired signal corrupted by additive noise  

- **Reference Input (x[n])**  
  Noise reference signal correlated with the noise present in the primary input  

The adaptive filter estimates the noise component using the reference input and subtracts it from the primary input to produce a **cleaned output signal**. Filter coefficients are continuously updated to minimize the error signal.

---

## 🧩 Algorithms Implemented

### 1. Least Mean Squares (LMS)
- Simple and computationally efficient algorithm  
- Convergence strongly depends on the choice of step size (μ)  
- Sensitive to variations in input signal power  

---

### 2. Normalized Least Mean Squares (NLMS)
- Step size normalized using input signal energy  
- Improved numerical stability compared to LMS  
- Faster and more consistent convergence  

---

### 3. Recursive Least Squares (RLS)
- Fastest convergence among implemented algorithms  
- Superior noise cancellation performance  
- Higher computational and memory requirements  

---

## 📁 Project Structure
Adaptive_Noise_Cancellation/
│
├── data/
│ ├── clean_signal.mat
│ ├── noisy_signal.mat
│ └── noise_reference.mat
│
├── algorithms/
│ ├── lms_filter.m
│ ├── nlms_filter.m
│ └── rls_filter.m
│
├── metrics/
│ ├── snr_calc.m
│ ├── mse_calc.m
│
├── main.m
└── README.md
