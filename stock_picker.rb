def stock_picker prices 
  max_profit=0
  result=[]

  prices.each_with_index do |price1, index1|
    prices[(index1+1)..-1].each_with_index do |price2, index2|
      temp_profit=price2-price1
      if temp_profit>max_profit
        max_profit=temp_profit 
        result = [index1,index2+index1+1]
        next
    end
  end
  end 
  p result
  result
  end
  
stock_picker [17,3,6,9,15,1,6,1,10]
