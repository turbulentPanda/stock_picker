def pick_days(array_of_prices)
  min_price = array_of_prices[0]
  min_price_index = 0

  profit = 0
  days = [0, 0]

  array_of_prices.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_price_index = index
    end

    if price - min_price > profit
      profit = price - min_price
      days = [min_price_index, index]
    end
  end

    days
end

def stock_picker(array_of_prices)
  days = pick_days(array_of_prices)

  buying_day = days[0]
  buying_price = array_of_prices[buying_day]

  selling_day = days[1]
  selling_price = array_of_prices[selling_day]

  profit = selling_price - buying_price

  "Buy on Day #{buying_day} for $#{buying_price} and sell on Day #{selling_day} for $#{selling_price}. Profit is $#{profit}."
end



p stock_picker([17,3,6,9,15,8,6,1,10])

