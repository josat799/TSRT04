function years = load_years_data()
    load datatraffic.mat years;
    years = years(1:6);
end