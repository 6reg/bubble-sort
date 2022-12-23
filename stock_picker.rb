# 1) Iterate through each num in list of prices
# 2) At the ith index, get i+1 index price and check if it is larger than the ith index price
# 3) If so, set best_buy=i and best_sell=i+1, then calculate profit best_sell - best_buy
# 4) If a price is found that is cheaper than current best_buy, set this to be new buying 
#   and continue from step 2
# 5) Otherwise, continue changing only the best_sell and keep best_buy set
# Algo runs in linear time, making only one pass through the array, so running O(n)
#
# get greatest difference in array assuming the lowest number has to come first
# returns index of lowest number followed by index of highest number

def stock_picker prices
  
  results = prices.each_with_index.to_a.combination(2).max_by{|buy,sell| sell[0]-buy[0]}.map{|price,i| i}
  puts results
end

puts stock_picker [17,3,6,9]

#  best_buy=0
#  best_sell=0
#  max_profit=[] 
#  prices[0..-2].each_with_index do |buy,i| 
#    prices[(i+1..-1].each_with_index do |sell, j|
#
#    next if n > prices[i+1]
#       
#    end
#  end
#end

