def max_difference(number, array_of_numbers)
  max_number = array_of_numbers.max
  {[number, max_number] => max_number - number}
end

  
def create_array_of_max_differences(stock_prices_array)
  stock_prices_array.filter_map do |price|
    price_index = stock_prices_array.index(price)
    unless price == stock_prices_array.last
      max_difference(price, stock_prices_array[price_index+1..stock_prices_array.length])
    end
  end
end

