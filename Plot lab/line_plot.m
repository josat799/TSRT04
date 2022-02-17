function line_plot(traffic, years, unit, scalar)
%line_plot Plots the curves for each catergory with y data = traffic and 
%x data = years.

ylabel_text = sprintf('%sbyte (10^{%d})', unit{1}, unit{2});

if scalar
    
    traffic = traffic * scalar;

end 

p = plot(linspace(years(1), years(6), 6), traffic);

p(1).LineWidth = 5;
p(2).LineWidth = 5;
p(3).Color = 'k';
p(3).LineWidth = 5;

xticks(years)
legend({'Video', 'File transfer', 'Web and other'})
xlabel('Years')
ylabel(ylabel_text)
title('Data traffic within the categories [Video, File trnasfer, Web and other]')

end

