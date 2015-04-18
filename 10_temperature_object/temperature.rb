class Temperature

  def initialize(temp_hash)
    @temp_hash = temp_hash
  end

  def to_fahrenheit
    if @temp_hash.has_key?(:f)
      @temp_hash[:f]
    else
      ((@temp_hash[:c].to_f * 1.8) + 32).round(1)
    end
  end

  def to_celsius
    if @temp_hash.has_key?(:c)
      @temp_hash[:c]
    else
      ((@temp_hash[:f].to_f - 32) / 1.8).round(1)
    end
  end

  def self.in_celsius(num)
    Temperature.new({c: num})
  end

  def self.in_fahrenheit(num)
    Temperature.new({f: num})
  end

end

class Celsius < Temperature
  def initialize(temp)
    @temp_hash = {c: temp}
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temp_hash = {f: temp}
  end
end

