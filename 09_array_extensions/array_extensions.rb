class Array

  def sum
    if self == []
      0
    else
    reduce(:+)
    end
  end


  def self.sum
    if self == []
      0
    else
    reduce(:+)
    end
  end

  def square
    if self == []
      []
    else
      self.collect {|num| num ** 2}
    end
  end


  def self.square
    if self == []
      []
    else
      self.collect {|num| num ** 2}
    end
  end

  def square!
    self.collect! { |num| num ** 2}
  end


end

