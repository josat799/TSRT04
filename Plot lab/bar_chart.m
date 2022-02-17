function bar_chart(traffic, years, option)
%bar_chart Visualizes a chart with grouped bars, y-axis represents the 
% traffic data and x-axis the years.   


b = bar(years, traffic, option);

% Presents the data differently depending on option
if isequal(option, "grouped")

    t1 = text(b(1).XEndPoints,b(1).YEndPoints,'Video','HorizontalAlignment','left', 'VerticalAlignment','middle');
    t2 = text(b(2).XEndPoints,b(2).YEndPoints,'File transfer','HorizontalAlignment','left', 'VerticalAlignment','middle');
    t3 = text(b(3).XEndPoints,b(3).YEndPoints,'Web and other','HorizontalAlignment','left', 'VerticalAlignment','middle');

    set(t1, 'Rotation', 90);
    set(t2, 'Rotation', 90);
    set(t3, 'Rotation', 90);
else

    legend({'Video', 'File transfer', 'Web and other'})

end


xlabel('Years')
ylabel('petabyte (10^{15})')
title('Visualization for data traffic over the years from 2013:2018')

end

