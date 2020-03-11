# frozen_string_literal: true

def reverser(&word)
  word.call.split(/\s/).map(&:reverse).join(' ')
end

def adder(default = 1, &number)
  default + number.call
end

def repeater(repeat = 1, &block)
  repeat.times { block.call }
end
