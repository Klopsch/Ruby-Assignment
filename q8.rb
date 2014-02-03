# Part 8: Object-Oriented Programming
class Class
    def attr_accessor_with_history(attr_name)
        attr_name = attr_name.to_s       # make sure it's a string
        attr_reader attr_name            # create the attribute's getter
        attr_reader attr_name+"_history" # create bar_history getter
        #attr_writer attr_name
        class_eval "@"+attr_name+"_history = []\n@"+attr_name+"_history.push(@bar)"
    end
end

class Foo
    attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2
puts f.bar_history
