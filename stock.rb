def stock_picker(array_prices)
  #set the buy price to first element
  buy_confirmed = 0
  buy_index = 0
  sell_index = 0
  max_sell = 0
  #for every other element
  for i in 1...array_prices.length do
    #if lower than previous buy price
    if array_prices[i] < array_prices[buy_index]
      #set buy price
      buy_index = i
    #else if sell price is better than current best
    elsif max_sell < array_prices[i] - array_prices[buy_index]
      max_sell = array_prices[i] - array_prices[buy_index]
      #make sell price
      buy_confirmed = buy_index
      sell_index = i
    end
  end
  #return best sell values
  return [buy_confirmed, sell_index]
end

p stock_picker([17,3,6,9,15,8,6,1,10,2,14,2,13,10,15,1,9,0])