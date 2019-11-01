class Timer

  def initialize
    @timer = "00:00:00"
  end

  def seconds
    @timer[-2..].to_i
  end

  def time_string
    @timer
  end

  def seconds=(seconds)
    second = seconds % 60
    minute_to_hour = seconds / 60
    hour = minute_to_hour / 60
    minute = (seconds / 60) - (60 * hour)

    @timer = "#{padded(hour)}:#{padded(minute)}:#{padded(second)}"
  end

  def padded(num)
    num = num.to_s
    if num.length == 1
      return "0#{num}"
    else
      return num
    end
  end
end
