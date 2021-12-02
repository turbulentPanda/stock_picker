def max_difference(number, array_of_numbers)
  max_number = array_of_numbers.max
  {[number, max_number] => max_number - number}
end



p max_difference(3, [1, 2, 3, 75])

  
