function [y,e] = lms_filter(d,x,mu,M)

N = length(d);
w = zeros(M,1);
y = zeros(N,1);
e = zeros(N,1);

for n = M:N
    x_n = x(n:-1:n-M+1);
    y(n) = w' * x_n;
    e(n) = d(n) - y(n);
    w = w + 2*mu*e(n)*x_n;
end

end
