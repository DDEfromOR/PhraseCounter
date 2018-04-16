require "../PhraseCounter.rb"

describe "It steps one word a time" do
    it "Finds all three word phrases" do
        input = "this is a six word phrase"
        output = PhraseCounter input
        expect(output[0]).to eq("this is a")
        expect(output[1]).to eq("is a six")
        expect(output[2]).to eq("a six word")
        expect(output[3]).to eq("six word phrase")
    end
end

describe "Finds phrases and adds to count" do
    it "Finds one repeated phrase" do
        input = "one two three testing one two three"
        output = PhraseCounter input
        expect(output[0]).to eq("2 - one two three")
        expect(output[1]).to eq("1 - two three testing")
        expect(output[2]).to eq("1 - three testing one")
        expect(output[3]).to eq("1 - testing one two")
    end
end

describe "Sanitizes input" do
    it "Finds two occurences of the phrase" do
        input = "I love Sandwiches. I LOVE SANDWICHES!!!"
        output = PhraseCounter input
        expect(output[0]).to eq("2 - i love sandwiches")
    end
end