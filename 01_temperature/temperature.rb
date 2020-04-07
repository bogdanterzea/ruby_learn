# frozen_string_literal: true

def ftoc(farenheit_degrees)
  celsius = (farenheit_degrees.to_i - 32) * 5.0 / 9.0
  celsius.round
end

def ctof(celsius_degrees)
  farenheit = (celsius_degrees.to_i * 9.0 / 5.0) + 32
end
