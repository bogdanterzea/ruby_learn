# frozen_string_literal: true

class Temperature
  def initialize(keyAndValue)
    @keyAndValue = keyAndValue
    @key = @keyAndValue.keys[0]
    @temp = @keyAndValue.values[0]
  end

  def self.from_celsius(temp)
    self.new(:c=>temp)
  end

  def self.from_fahrenheit(temp)
    self.new(:f=>temp)
  end

  def in_celsius
    if @key == :c
      @temp
    else
      (@temp-32)*(5.0/9.0)
    end
  end

  def in_fahrenheit
    if @key == :f
      @temp
    else
      (@temp *9.0/5.0) + 32
    end
  end
end

class Celsius < Temperature
  def initialize(temp)
    @key = :c
    @temp = temp
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @key = :f
    @temp = temp
  end
end