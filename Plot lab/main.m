function main ()
%main Main application

% Closes all open figures and clears workspace from previous data
close all;
clear;

% Reads and sets the datatraffic 
years = load_years_data();
traffic = load_traffic_data();


figure
line_plot(traffic, years)

figure 
subplot(2,1,1)
bar_chart(traffic, years, 'grouped')
subplot(2,1,2)
bar_chart(traffic, years,'stacked')

end
