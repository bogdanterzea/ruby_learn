# frozen_string_literal: true

class RPNCalculator
  attr_accessor :calculator

  def initialize
    @calculator = []
  end

  def push(val)
    @calculator << val
  end

  def plus
    if @calculator.size >= 2
      sum = @calculator.pop + @calculator.pop
      @calculator << sum
    else
      raise 'calculator is empty'
  end
  end

  def minus
    if @calculator.size >= 2
      sum = -@calculator.pop + @calculator.pop
      @calculator << sum
    else
      raise 'calculator is empty'
  end
  end

  def divide
    if @calculator.size >= 2
      last = @calculator.pop.to_f
      first = @calculator.pop.to_f
      division = first / last
      @calculator << division
    else
      raise 'calculator is empty'
  end
  end

  def times
    if @calculator.size >= 2
      last = @calculator.pop.to_f
      first = @calculator.pop.to_f
      times = last * first
      @calculator << times
    else
      raise 'calculator is empty'
  end
  end

  def tokens(x)
    arr = x.split(' ')
    y = arr.collect do |a|
      if a == '+' || a == '-' || a == '*' || a == '/'
        a.to_sym
      else
        a.to_i
        end
    end
    y
  end

  def evaluate(y)
    tokens(y).each do |s|
      if s == :+
        plus
      elsif s == :-
        minus
      elsif s == :/
        divide
      elsif s == :*
        times
      else
        push(s)
      end
    end
    value
  end

  def value
    @calculator.last
  end
end
