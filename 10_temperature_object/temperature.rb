# frozen_string_literal: true

class Temperature
  def initialize(hash)
    @ftemp = hash[:f]
    @ctemp = hash[:c]
  end

  def in_fahrenheit
    if @ftemp != 0
      @ftemp
    else
      (@ctemp.to_f * 9 / 5) + 32
    end
  end

  def in_celsius
    if @ftemp != 0
      (@ftemp - 32) * 5 / 9
    else
      @ctemp
    end
  end

  def self.from_celsius(temp)
    new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    new(:f => temp)
  end
end

class Celsius < Temperature
  def initialize(temp)
    @ctemp = temp
    @ftemp = in_fahrenheit
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @ftemp = temp
    @ctemp = in_celsius
  end
end
