# Part 11: Blocks
class CartesianProduct
    include Enumerable
    def initialize(a, b)
        @a = a
        @b = b
    end
    def each
        @tempArray = []
        @fullArray = []
        @a.each do |i|
            @b.each do |j|
                @tempArray = [i, j]
                @fullArray.push(@tempArray)
            end
        end
        return @fulArray
    end
end

c = CartesianProduct.new([:a, :b], [4, 5])
c.each { |elt| puts elt.inspect }

