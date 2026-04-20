def stock_picker(prices)
  max_profit = 0
  min_profit_idx = 0
  max_profit_idx = 0
  min_index = 0
  current_index = 0

  while current_index < prices.length
    profit = prices[current_index] - prices[min_index]

    if profit > max_profit
      max_profit_idx = current_index
      min_profit_idx = min_index
      max_profit = profit
    elsif profit < 0
      min_index = current_index
    end

    current_index += 1
  end

  if max_profit == 0
    return "Don't buy that shit"
  end

  [min_profit_idx, max_profit_idx]
end


winner_bets_1 = stock_picker([17,3,6,9,15,8,6,1,10])
winner_bets_2 = stock_picker([7, 1, 7, 3, 6, 4])
winner_bets_3 = stock_picker([7, 6, 4, 3, 1])
print winner_bets_1
print "\n"
print winner_bets_2
print "\n"
print winner_bets_3