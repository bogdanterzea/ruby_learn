# frozen_string_literal: true

class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(x)
    if x.is_a?(String)
      @entries[x] = nil
    else
      x.each do |key, val|
        @entries[key] = val
      end
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(x)
    if @entries.keys.include?(x)
      true
    else
      false
    end
  end

  def find(x)
    answer = {}
    @entries.each do |key, value|
      answer[key] = value if key[0...x.length] == x
      answer[key] = value if x[0..1] == key[0..1]
    end
    answer
  end

  def printable
    a = @entries.sort.map do |key, value|
      "[#{key}] \"#{value}\""
    end
    a.join("\n")
  end
end
