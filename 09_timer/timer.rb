class Timer
@timer = Timer.new
attr_accessor :seconds
    def initialize(seconds = 0)
        @seconds=seconds
    end

    def time_string
        seconds = @seconds % 60
        minutes = (@seconds / 60) % 60
        hours = @seconds / (60**2)
        "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
    end

    def padded(num)
      return '0' + num.to_s if num < 10
      return num.to_s if num >= 10
    end
    
end
