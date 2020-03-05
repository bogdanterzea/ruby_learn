class Temperature
    def initialize(hash = {})
    @hash = hash
    end
    def self.from_celsius(temp)
        Temperature.new({c: temp})
    end

    def self.from_fahrenheit(temp)
        Temperature.new({f: temp})
    end

    def in_fahrenheit
        if @hash.has_key?(:f)
            return @hash[:f]
        elsif @hash.has_key?(:c)
            return @hash[:c]*9.to_f/5+32
        elsif @temp.is_a? Numeric
            return @temp*9.to_f/5+32
        else
            return @temp
        end
    end
    def in_celsius
        if @hash.has_key?(:c)
            return "???????????????????"
        elsif @hash.has_key?(:f)
            return (@hash[:f]-32)*5.to_f/9
        elsif @temp.is_a? Numeric
            return (@temp-32)*5.to_f/9
        else
            return @temp
        end
    end
end
