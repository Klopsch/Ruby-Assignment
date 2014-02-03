# Part 10: Palindromes
class String
    def palindrome?
        @modded = self.downcase.gsub(/(\W)/, "")
        @reversed = @modded.reverse
        puts self, (@modded == @reversed)
    end
end
puts "Part 10: Plaindromes"
test = "A man, a plan, a canal -- Panama"
test.palindrome?
