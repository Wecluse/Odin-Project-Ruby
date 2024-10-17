def stock_picker(stock_prices)
     # Initialization
    best_days = []
    best_profit = 0

    # Goes through the entire array with its index
    stock_prices.each_with_index do |buy_price, buy_day|
        # For each buy_day, look at the prices of the days after it to find the best sell day
        stock_prices[buy_day + 1..-1].each_with_index do |sell_price, index|
            # Calculate profit (sell price - buy price)
            profit = sell_price - buy_price
            # Calculate sell daay
            sell_day = buy_day + 1 + index
            
            # Updates profit if better profit is found
            if profit > best_profit
                best_profit = profit
                best_days = ["Buy Day: #{buy_day}", "Sell Day: #{sell_day}"]
            end
        end
    end
    # Return the best days to buy and sell for best profit
    best_days
end

#Sample Stock Prices
print stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
print stock_picker([8, 4, 2, 4, 5, 6, 10, 12])