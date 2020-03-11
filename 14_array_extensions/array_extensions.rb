# frozen_string_literal: true

class Array
  def sum
    summ = 0
    each { |number| summ += number }
    summ
  end

  def square
    square = map { |number| number**2 }
    square
  end

  def square!
    map! { |number| number**2 }
    self
  end
end
