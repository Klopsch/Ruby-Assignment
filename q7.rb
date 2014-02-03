# Part 7: Object-Oriented Programming
class Dessert
    attr_accessor :name
    attr_accessor :calories
    def initialize(name, calories)
        @name = name
        @calories = calories
    end

    def healthy?
        if @calories < 200
            return true
        else
            return false
        end
    end

    def delicious?
        return true
    end
end

class JellyBean < Dessert
    attr_accessor :name
    attr_accessor :calories
    attr_accessor :flavor
    def initialize(name, calories, flavor)
        @name = name
        @calories = calories
        @flavor = flavor
    end

    def delicious?
        if @flavor == "black licorice"
            return false
        else
            return true
        end
    end
end
puts "Part 7: Object-Oriented Programming"
puts "Baking a cake..."
cake = Dessert.new("Chocolate Cake", 1500)
puts "What type of dessert?"
puts cake.name
puts "Is it healthy?"
puts cake.healthy?
puts "Is it delicious?"
puts cake.delicious?

puts "Buying jellybeans..."
blackBean = JellyBean.new("Black Bean", 15, "black licorice")
puts "What type of bean is it?"
puts blackBean.name
puts "Is it healthy?"
puts blackBean.healthy?
puts "Is it delicious?"
puts blackBean.delicious?
