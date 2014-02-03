# Part 6: Strings & Regular Expressions
class Matching
    def glob_match(filenames, pattern)
        @names = filenames
        @pattern = pattern
        Dir.mkdir("temp")
        Dir.chdir("temp")
        @names.each do |i|
            File.new(i, "w+")
        end
        Dir.glob(@pattern).each do |j|
            puts j
        end
        @names.each do |k|
            File.delete(k)
        end
        #Dir.rmdir("temp")
    end
end
puts "Part 6: Strings & Regular Expressions"
puts "Filenames: part1.rb, part2.rb, part2.rb~, part3.rb.un~"
puts "Pattern: *part*rb?*"
match = Matching.new
match.glob_match(["part1.rb", "part2.rb", "part2.rb~", "part3.rb.un~"],
                 "*part*rb?*")
