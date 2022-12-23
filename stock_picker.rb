def stock_picker prices
  # create vars for max_profit and result arr
  max_profit = 0
  result = []
  
  # loop through prices
  prices.each_with_index do |low, i|
  # # nested loop through prices
    prices.each_with_index do |high, j|
      # profit = p2 - p1
      profit = high - low

    # if profit > max_profit and buy index before sell index
    if profit > max_profit and i < j
      max_profit = profit
      result = [i,j]
    end

  end

  end
  p result
end
stock_picker [17,3,6,9,15,8,6,1,10]
