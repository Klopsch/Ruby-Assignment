# Part3: Word Count
class WordCount
    def count_words(string)
        @hash = Hash.new
        @hash.default = 0
        @string = string.downcase.split(/(\b)/)
        @string.each do |i|
            temp = i.downcase.gsub(/(\W)/, "")
            if temp != ""
                @hash[temp] = @hash[temp] + 1
            end
        end
        puts @hash
    end
end
puts "Part 3: Word Count"
count = WordCount.new
puts "A man, a plan, a canal -- Panama"
count.count_words("A man, a plan, a canal -- Panama")
puts "Doo bee doo bee doo"
count.count_words("Doo bee doo bee doo")
