sizes = 10:10:100;
timesWithLoops = zeros(length(sizes), 1);
timesVectorized = zeros(length(sizes), 1);

for i = 1:length(sizes)
    N = sizes(i);
    D = 5;
    X = rand(N, D);
    
    tic;
    Z = computeZWithLoops(X);
    timesWithLoops(i) = toc;
    
    tic;
    Z = computeZVectorized(X);
    timesVectorized(i) = toc;
end

figure;
plot(sizes, timesWithLoops, 'r-*', 'LineWidth', 2, 'MarkerSize', 5);
hold on;
plot(sizes, timesVectorized, 'b-*', 'LineWidth', 2, 'MarkerSize', 5);
hold off;

xlabel('Matrix size NXN');
ylabel('Execution time (seconds)');
title('Comparison of Execution Times');
legend('With Loops', 'Vectorized', 'Location', 'northeast');
grid on;
