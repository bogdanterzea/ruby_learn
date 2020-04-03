class Fixnum
  def in_words
    number = self
    number_as_string = ''

    if number >= 1_000_000_000_000
      trillions = number / 1_000_000_000_000
      number_as_string << "#{process(trillions)} trillion "
      if number % 1_000_000_000_000 == 0
        return number_as_string.strip
      else
        number = number % 1_000_000_000_000
      end
    end

    if number >= 1_000_000_000
      billions = number / 1_000_000_000
      number_as_string << "#{process(billions)} billion "
      if number % 1_000_000_000 == 0
        return number_as_string.strip
      else
        number = number % 1_000_000_000
      end
    end

    if number >= 1_000_000
      millions = number / 1_000_000
      number_as_string << "#{process(millions)} million "
      if (number % 1_000_000).zero?
        return number_as_string.strip
      else
        number = number % 1_000_000
      end
    end

    if number >= 1_000
      thousands = number / 1_000
      number_as_string << "#{process(thousands)} thousand "
      if (number % 1_000).zero?
        return number_as_string.strip
      else
        number = number % 1_000
      end
    end

    number_as_string << process(number)
    number_as_string.strip
  end

  def process_hundreds(number)
    hundreds = number / 100

    if (number % 100).zero?
      "#{find_in_hash(hundreds)} hundred "
    else
      "#{find_in_hash(hundreds)} hundred #{process_under_hundred(number % 100)}"
    end
  end

  def process_under_hundred(number)
    if find_in_hash(number) != 'Not inside hash'
      find_in_hash(number)
    else
      "#{find_in_hash(number - (number % 10))} #{find_in_hash(number % 10)}"
    end
  end
end

def find_in_hash(number)
  words_hash = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety' }
  if words_hash.key? number
    words_hash[number]
  else
    'Not inside hash'
  end
end

def process(number)
  if number >= 100
    process_hundreds(number)
  else
    process_under_hundred(number)
  end
end
