# Part1: Hello World
class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
       puts "Hello #{@name}!"
    end
end
puts "Part 1: Hello World"
hello = HelloWorldClass.new("Sam!")
hello.sayHi
