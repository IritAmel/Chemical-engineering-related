def give_back_x_y(temps)
  temps.each do |temp|
    # Antoine equations for wach component
    antoine_for_acetone = 7.11714 - (1210.595 / (temp + 229.664))
    antoine_for_ethanol = 8.11220 - (1592.864 / (temp + 226.184))
    # Vapor pressure for each component
    p_acetone = 10**antoine_for_acetone
    p_ethanol = 10**antoine_for_ethanol
    x = (760 - p_ethanol) / (p_acetone - p_ethanol) # fraction of acetone in liquid
    y = (p_acetone * x) / 760 # fraction of acetone in gas
    ans = [temp, p_acetone.round, p_ethanol.round, x.round(3), y.round(3)]
    print ans
    puts ' '
  end
end

temps = [56, 60, 64, 72, 76, 78.4]
p give_back_x_y(temps)