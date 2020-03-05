class Array
    def sum
        summ = 0
        self.each{ |number| summ += number}
        summ
    end

    def square
        square = self.map{|number| number ** 2}
        square
    end

    def square!
        self.map!{|number| number ** 2}
        self
    end

end
