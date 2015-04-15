

def translate(string)
  vowels = ['a', 'e', 'i', 'o', 'u']

  words = string.split(' ')
  word_array = words.each do |word|
    if vowels.include? word[0]
      word << "ay"
    elsif word[0..1].downcase == "qu"
      first_two = word[0..1].downcase
      word.reverse!
      word.chop!
      word.chop!
      word.reverse! << first_two << "ay"
    elsif word[0..2].downcase == "squ"
      first_three = word[0..2].downcase
      word.reverse!
      word.chop!
      word.chop!
      word.chop!
      word.reverse! << first_three << "ay"
    else
      until vowels.include? word[0] do
        first = word.chr
        word.reverse!
        word.chop!
        word.reverse!
        new_w = word << first
      end
      new_w << "ay"
    end
  end
  word_array.join(' ')
end