function Z = Vectorized(X)
    sumX = sum(X.^2, 2);
    sumX = sumX(:, ones(1, size(X, 1)));
    sumXTrans = sumX';
    Z = sumX + sumXTrans - 2 * (X * X');
    Z(Z < 0) = 0;
    Z = sqrt(Z);
end