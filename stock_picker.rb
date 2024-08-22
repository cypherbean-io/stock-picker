def stock_picker(prices)
  max_profit = 0
  best_days = []
  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day..-1].each_with_index do |sell_price, sell_day|
      profit = sell_price - buy_price
      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day + buy_day]
      end
    end
  end
  best_days
end

p stock_picker([17,3,6,9,2,8,6,17,1])