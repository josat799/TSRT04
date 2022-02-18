function main ()
%main Main application

% Closes all open figures and clears workspace from previous data
close all;
clear;

% Reads and sets the datatraffic 
years = load_years_data();
traffic = load_traffic_data();

figure
line_plot(traffic, years, {'peta', 15}, 1)


figure 
subplot(2,1,1)
bar_chart(traffic, years, 'grouped')
subplot(2,1,2)
bar_chart(traffic, years,'stacked')

figure
% With scalar 
line_plot(traffic, years, {'giga', 6}, 1/9.6)


% Creates a new column with the sum of each row 
for i = 1:6    
    traffic(i,4) = sum(traffic(i, :));
end

figure
% With scalar ad updated traffic matrix
line_plot(traffic, years, {'giga', 6}, 1/9.6)

end
