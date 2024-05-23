function Z = WithLoops(X)
    N = size(X, 1);
    Z = zeros(N, N);
    
    for i = 1:N
        for j = 1:N
            xi = X(i, :);
            xj = X(j, :);
            Z(i, j) = sqrt(sum(xi.^2) - 2 * dot(xi, xj) + sum(xj.^2));
        end
    end
end
    