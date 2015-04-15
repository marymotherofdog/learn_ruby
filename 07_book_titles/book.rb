class Book
attr_writer :title


def title
  prepositions = ['in', 'of'] #missing 51 prepositions
  conjunctions = ['and', 'but', 'or', 'nor', 'for', 'yet']
  articles = ['a', 'an', 'the']
  @title.capitalize!
  words = @title.split(' ')
  caps = words.each do |word|
    unless (articles.include? word)|| (conjunctions.include? word) || (prepositions.include? word)
      word.capitalize!
    end
  end
  caps.join(' ')
end


end
