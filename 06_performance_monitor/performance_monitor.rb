# frozen_string_literal: true

require 'time'
def measure(pass = 1)
  start_time = Time.now
  pass.times { yield }
  (Time.now - start_time) / pass
end
