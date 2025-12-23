function s = snr_calc(clean,signal)
s = 10*log10(sum(clean.^2) / sum((clean-signal).^2));
end
