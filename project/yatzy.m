%% Main
function [mhat, s2hat] = yatzy(experiments)

close all;
fprintf("Running Monte Carlo simulation... \n")
for index = 1:experiments
    results(index) = YatzySimulator(false);
    % Dispalys every 100 test
    if mod(index, 100) == 0
        fprintf("Experiment %d; average amount of throws %0.00f to get Yatzy! \n", index, mean(results));
    end
end 

% Calculates the mean and variance
[mhat, s2hat] = CalcDist(results);

% Show a hist for the result
figure 
h = histogram(results);
h.BinWidth = 1;
xlabel("Amount of throws");
ylabel("Repeated scenarios");

% Creates the probability function
A = [
    0 1/6 1/36 1/216 1/1296; 
    0 5/6 10/36 15/216 25/1296; 
    0 0 25/36 80/216 250/1296; 
    0 0 0 120/216 900/296; 
    0 0 0 0 120/296];

e_1 = [1 0 0 0 0];
e_5 = [0 0 0 0 1]';

% Creates a probability vector based on the experiments made
probVector = zeros(1, size(min(results):max(results), 2));

for k = min(results):max(results)
    probVector(k) = (e_1*(A^k)*e_5);
end

hold on
% Plots the probability on top of the hist
plot(probVector*(100), 'r', 'Linewidth', 1);

end