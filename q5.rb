# Part 5: Anagrams
class Anagrams
    def combine_anagrams(words)
        puts "----------"
        @words = words
        @unusedWords = words
        @newArray = []
        @words.each do |i|
            @tempArray = []
            if @unusedWords.include?(i)
                @tempArray.push(i)
                @unusedWords.delete(i)
                @unusedWords.each do |j|
                    if i.chars.sort.join == j.chars.sort.join
                        @tempArray.push(j)
                    end
                end
            end
            puts @tempArray
            puts "----------"
        end
        #return @newArray
    end
end
puts "Part 5: Anagrams"
puts "Using: cars, for, potatoes, racs, four, scar, creams, scream"
anagram = Anagrams.new
anagram.combine_anagrams(["cars", "for", "potatoes", "racs", "four",
                               "scar", "creams", "scream"])
