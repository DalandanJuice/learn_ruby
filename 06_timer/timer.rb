class Timer
  def initialize
    @seconds = 0
  end
  def seconds
    @seconds
  end
  def time_string 
    if @seconds >= 3600
      hours = @seconds / 3600
      minutes_in_seconds = (@seconds - (hours * 3600))
      minutes = minutes_in_seconds / 60
      @seconds = minutes_in_seconds - (minutes * 60)
      return "%02d" % hours + ":%02d" % minutes + ":%02d" % @seconds
    elsif @seconds > 59
      minutes = @seconds / 60
      @seconds = seconds - (minutes * 60)
      return "00:%02d" % minutes + ":%02d" % @seconds
    else
      return "00:00:%02d" % @seconds
    end
  end
  def seconds=(seconds)
    @seconds = seconds
  end
  #write your code here
end
