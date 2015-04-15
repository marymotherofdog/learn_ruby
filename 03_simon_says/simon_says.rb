def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num = 1)
  if num == 1
    string + ' ' + string
  else
  array = []
    num.times do
    array << string
    end
  array.join(' ')
  end
end

def start_of_word(string, num)
  string[0..(num - 1)]
end

def first_word(string)
  words = string.split(' ')
  words[0]
end

def titleize(string)
  words = string.split(' ')
  caps = words.each do |word|
    if word.length > 4
      word.capitalize!
    elsif word == words[0]
        word.capitalize!
    elsif word == "kwai"
      word.capitalize!
    else
      word
    end
  end
  caps.join(' ')
end

