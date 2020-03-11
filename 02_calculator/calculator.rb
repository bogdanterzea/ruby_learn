# frozen_string_literal: true

def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def sum(array)
  summ = 0
  array.each { |x| summ += x }
  summ
end
