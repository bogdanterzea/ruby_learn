# frozen_string_literal: true

class Temperature
  def initialize(hash = {})
    @hash = hash
  end

  def self.from_celsius(temp)
    Temperature.new({ c: temp })
  end

  def self.from_fahrenheit(temp)
    Temperature.new({ f: temp })
  end

  def in_fahrenheit
    if @hash.key?(:f)
      @hash[:f]
    elsif @hash.key?(:c)
      @hash[:c] * 9.to_f / 5 + 32
    elsif @temp.is_a? Numeric
      @temp * 9.to_f / 5 + 32
    else
      @temp
    end
  end

  def in_celsius
    if @hash.key?(:c)
      '???????????????????'
    elsif @hash.key?(:f)
      (@hash[:f] - 32) * 5.to_f / 9
    elsif @temp.is_a? Numeric
      (@temp - 32) * 5.to_f / 9
    else
      @temp
    end
  end
end
