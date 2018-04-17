class PhraseCounter
    counter = Hash.new(0)
    #assumes files are hosted locally
    input_file = File.open('test.txt', 'r')
    output_file = File.open('phraseresults.txt', 'w')
    words = input_file.read.downcase.scan(/(\b[a-z]+\b)/).map 
    
    words.each_cons(3) do |word1, word2, word3|
        phrase = word1 + word2 + word3
        counter[phrase] = counter[phrase] + 1
    end
    
    counter.sort_by {|key,value| value}
    .each{|key| output_file.print key, ' Occurences: ', counter[key], "\n"}
end