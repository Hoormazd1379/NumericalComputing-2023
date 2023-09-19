% Task 1: Plot the function for 200 linearly spaced points using a FOR loop
x1 = linspace(-2*pi, 2*pi, 200);
y1 = zeros(size(x1));

for i = 1:length(x1)
    y1(i) = exp(-x1(i)^2/5) * sin(2*x1(i));
end

figure;
plot(x1, y1);
title('Plot of f(x) for 200 linearly spaced points with a FOR loop');
xlabel('x');
ylabel('f(x)');

% Task 2: Define a function handle for f(x) and plot for 1000 linearly spaced points without a for loop
f = @(x) exp(-(x.^2)/5) .* sin(2*x);
x2 = linspace(-2*pi, 2*pi, 1000);
y2 = f(x2);

figure;
plot(x2, y2);
title('Plot of f(x) for 1000 linearly spaced points without a FOR loop');
xlabel('x');
ylabel('f(x)');

% Task 3: Save the plots in EPS format
print('plot1.eps', '-depsc');
print('plot2.eps', '-depsc');
