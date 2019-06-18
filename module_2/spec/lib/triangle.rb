class Triangle
    attr_accessor :a, :b, :c

    def initialize(a, b, c)
        @a = a
        @b = b
        @c = c
    end

    def type
        return :invalid  unless @a && @b && @c

        if @a == @b && @b == @c
            return :equilateral
        elsif @a == @b || @b == @c || @c == @a
            return :isosceles
        else
            return :scalene
        end
    end
end