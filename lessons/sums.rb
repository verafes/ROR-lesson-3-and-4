class Sum1
    attr_accessor :total

    def initialize(a, b)
        @total = a + b
    end
end

class Sum2
    attr_accessor :a, :b

    def initialize(a, b)
        @a = a
        @b = b
    end

    def new_total
        @a + @b
    end
end

# instances
sum1 = Sum1.new(5, 6)
sum2 = Sum2.new(5, 6)

puts "Sum1 total: #{sum1.total}"
puts "Sum2 total: #{sum2.new_total}"
