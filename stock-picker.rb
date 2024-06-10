#define function
def stock_picker(prices)
    best_buy_day = 0
    best_sell_day = 0
    max_profit = 0

    for buy_day in 0...prices.length
        buy_price = prices[buy_day]

        for sell_day in (buy_day + 1)...prices.length
            sell_price = prices[sell_day]
            profit = sell_price - buy_price

            if profit > max_profit
                best_buy_day = buy_day
                best_sell_day = sell_day
                max_profit = profit
            end
        end
    end
    [best_buy_day, best_sell_day]
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]).inspect