r = [-5:0.05:5];
z = [-4:0.05:4];
n = length(r);
m = length(z);
phi = zeros(n,m);
for i = 1:n
    for j = 1:m
        x = r(i);
        y = z(j);
        f = @(k) exp(-k.^2/2 - k.*abs(y)).*k.*besselj(0,k.*x);
        phi_temp = integral(f,0,Inf);
        phi(i,j) = phi_temp;
    end
end


mesh(z,r,phi)