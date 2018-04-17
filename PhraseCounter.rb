require "pry"

class PhraseCounter
    counter = Hash.new(0)
    #assumes files are hosted locally
    input_file = File.open('test.txt', 'r')
    words = input_file.read.downcase.scan(/(\b[a-z]+\b)/).map 
    
    words.each_cons(3) do |word1, word2, word3|
        phrase = word1 + word2 + word3
        counter[phrase] = counter[phrase] + 1
    end
    
    sortedCounter = counter.sort_by {|key,value| value}
    sortedCounter.last(100).reverse
    .each{|key| Pry::ColorPrinter.pp("#{key[1]} - #{key[0][0]} #{key[0][1]} #{key[0][2]}")}
end