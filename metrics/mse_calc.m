function m = mse_calc(clean,signal)
m = mean((clean-signal).^2);
end
