require "pry"

    def main
        input = ARGF.read.downcase.scan(/(\b[a-z]+\b)/).map 
        Counter(input).each{|key| Pry::ColorPrinter.pp("#{key[1]} - #{key[0][0]} #{key[0][1]} #{key[0][2]}")}
    end

    def Counter (words)
        phrases = Hash.new(0)
        words.each_cons(3) do |word1, word2, word3|
            phrase = word1 + word2 + word3
            phrases[phrase] = phrases[phrase] + 1
        end
    
        phrases.sort_by {|key,value| value}.last(100).reverse
    end
    
main