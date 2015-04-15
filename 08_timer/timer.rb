class Timer
  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
    string = "00:00:00"
    if @seconds > 3600
      hours = @seconds / 3600
      if hours > 9
        string[0..1] = hours.to_s
      else
        string[1] = hours.to_s
      end
      remains = (@seconds % 3600)
      mins = remains / 60
      if mins > 9
        string[3..4] = mins.to_s
      else
        string[4] = mins.to_s
      end
      secs = remains % 60
      string[6..7] = secs.to_s
      string
    elsif @seconds > 60
      minutes = @seconds / 60
      if minutes > 9
        string[3..4] = minutes.to_s
      else
        string[4] = minutes.to_s
      end
      remain = @seconds % 60
      if remain > 9
        string[6..7] = remain.to_s
      else
        string[7] = remain.to_s
      end
      string
    elsif @seconds < 60
      if @seconds > 9
        string[6..7] = seconds.to_s
      else
        string[7] = seconds.to_s
      end
      string
    else
      string
    end

  end
end
