function [y,e] = rls_filter(d,x,lambda,M)

N = length(d);
w = zeros(M,1);
P = eye(M)*10;    
y = zeros(N,1);
e = zeros(N,1);

for n = M:N
    x_n = x(n:-1:n-M+1);
    k = (P*x_n)/(lambda + x_n'*P*x_n);
    y(n) = w' * x_n;
    e(n) = d(n) - y(n);
    w = w + k*e(n);
    P = (P - k*x_n'*P)/lambda;
end

end
