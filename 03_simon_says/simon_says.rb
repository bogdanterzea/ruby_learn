def echo(what)
    return what
end

def shout(words)
    return words.upcase
end

def repeat(interpret, times = 2)
    (1..times).map { interpret }.join(' ')
end

def start_of_word(string, value)
    string[0, value]
end

def first_word(string)
    "#{string.partition(" ").first}"
end


def titleize(string)
  words_no_cap = ['and', 'or', 'the', 'over', 'to', 'a', 'but']
  string.split(' ').map.with_index { |word, index| words_no_cap.include?(word) && (index != 0) ? word : word.capitalize }.join(' ')
end
