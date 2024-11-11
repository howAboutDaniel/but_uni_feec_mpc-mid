clc; clear; close;
format long e

N = 20;

fib_array = zeros(1, N);
fib_array(1) = 0;
fib_array(2) = 1;

for i = 3:N
    fib_array(i) = fib_array(i-1) + fib_array(i-2);
end

disp(fib_array)
S = sum(fib_array);
disp(S)

ratio = zeros(1, N);
ratio(1) = fib_array(1) / fib_array(2);

for i = 1:N-2
    ratio(i) = fib_array(i+1) / fib_array(i+2);
end

disp(ratio)

figure
hold on; grid on;
plot(ratio)