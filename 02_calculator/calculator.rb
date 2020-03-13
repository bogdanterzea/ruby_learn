# frozen_string_literal: true

def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def sum(array)
  array.reduce(0) { |summ, n| summ + n }
end

def multiply(numbers)
  numbers.reduce(1) { |prod, n| prod * n }
end

def power(number, power)
  number**power
end

def factorial(number)
  response = 1
  if number == 0
    return response
  end

  while number != 1
    response *= number
    number -= 1
  end
  return response
end
