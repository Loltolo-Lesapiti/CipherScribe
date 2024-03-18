def stock_picker(trading_days)
    max_profit=0
    sell_day=0;
    buy_day=0;
    trading_days.each do |buy|
        (buy+1..trading_days.length-1).each do |sell|
            profit= trading_days[sell]-trading_days[buy]
            if profit>max_profit
                max_profit=profit
                sell_day=sell
                buy_day=buy
            end
        end
    end
    puts [buy_day, sell_day]
end
trading_days=[17,3,6,9,15,8,6,1,10]
stock_picker(trading_days)