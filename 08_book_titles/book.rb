# frozen_string_literal: true

class Book
  @book = Book.new
  attr_reader :title

  def title=(string)
    exceptions = %w[and a the if or of in an]
    words = string.split(' ')
    words.map do |word|
      if exceptions.include? word
        word
      else
        word.capitalize!
      end
    end
    words[0].capitalize!
    @title = words.join(' ')
  end
end
