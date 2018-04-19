def main
    if ARGF.filename != "-" or (not STDIN.tty? and not STDIN.closed?)
        input = ARGF.read
        unless input.length > 2
            puts ("Input contains less than three words!")
        end
        counter(input)
    else
        puts ("Could not find any phrases to count!")
    end
end

def counter (words)
    phrases = Hash.new(0)
    words.downcase.scan(/(\b[a-z]+\b)/).map.each_cons(3) do |word1, word2, word3|
        phrase = word1 + word2 + word3
        phrases[phrase] = phrases[phrase] + 1
    end

    phrases.sort_by {|key,value| value}.last(100).reverse
      .each{|key| puts ("#{key[1]} - #{key[0][0]} #{key[0][1]} #{key[0][2]}")}
end
    
main