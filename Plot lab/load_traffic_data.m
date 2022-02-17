function traffic = load_traffic_data()
    load datatraffic.mat traffic;
    traffic = traffic(1:6, 1:3);

end