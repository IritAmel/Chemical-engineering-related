def give_back_x_y(temp)
  ans = []
  temp.each do |ele|
    antoine_for_acetone = 7.11714 - (1210.595 / (ele + 229.664))
    p_acetone = 10**antoine_for_acetone
    antoine_for_ethanol = 8.11220 - (1592.864 / (ele + 226.184))
    p_ethanol = 10**antoine_for_ethanol
    x = (760 - p_ethanol) / (p_acetone - p_ethanol) # fraction of acetone in liquid
    y = (p_acetone * x) / 760 # fraction of acetone in gas
    ans = [ele, p_acetone.round, p_ethanol.round, x.round(3), y.round(3)]
    print ans
    puts ' '
  end
end

temp = [56, 60, 64, 72, 76, 78.4]
p give_back_x_y(temp)