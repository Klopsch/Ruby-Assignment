# Part2: Palindrome
class Palindrome
    def palindrome?(word)
        @modded = word.downcase.gsub(/(\W)/, "")
        @reversed = @modded.reverse
        puts word, (@modded == @reversed)
    end
end
puts "Part 2:"
test = Palindrome.new
test.palindrome?("A man, a plan, a canal -- Panama")
test.palindrome?("Madam, I'm Adam!")
test.palindrome?("Abracadabra")
