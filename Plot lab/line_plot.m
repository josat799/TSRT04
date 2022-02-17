function line_plot(traffic, years)
%line_plot Plots the curves for each catergory with y data = traffic and 
%x data = years.


plot(linspace(years(1),years(6),6),traffic)

xticks(years)
legend({'Video', 'File transfer', 'Web and other'})
xlabel('Years')
ylabel('petabyte (10^{15})')
title('Evolution of petabyte regarding the categories [Video, File trnasfer, Web and other]')

end

