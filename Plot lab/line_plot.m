function line_plot(traffic, years, unit, scalar)
%line_plot Plots the curves for each catergory with y data = traffic and 
%x data = years.

ylabel_text = sprintf('%sbyte (10^{%d})', unit{1}, unit{2});

if scalar
    
    traffic = traffic * scalar;

end 

p = plot(linspace(years(1), years(6), 6), traffic);

[m, n] = size(traffic);

for i=1:n
    p(i).LineWidth = 2;
    if i == 1 
        p(i).LineStyle = '--';
    elseif i == 2
        p(i).LineStyle = ':';
    elseif i == 3
        p(i).Color = 'k';
        legend({'Video', 'File transfer', 'Web and other'})
    elseif i == 4
        p(i).LineWidth = 5;
        legend([p(4), p(1), p(3), p(2)], {'Total', 'Video', 'Web and other', 'File transfer'})
    end
end

xticks(years)
xlabel('Years')
ylabel(ylabel_text)
title('Data traffic')

end

