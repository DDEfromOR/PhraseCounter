require "PhraseCounter"
require 'stringio'

describe "main" do
    it "objects to not having input" do
        formatted_output = "Could not find any phrases to count!\n"
        expect { main }.to output(formatted_output).to_stdout

    end
end

describe "counter" do
    it "handles three word input" do
        formatted_output = "1 - three new words\n"
        expect { counter("three new words") }
        .to output(formatted_output).to_stdout
    end

    it "knows how to count" do
        formatted_output = "2 - three new words\n1 - words three new\n1 - new words three\n"
        expect { counter( "three new words three new words") }
        .to output(formatted_output).to_stdout
    end

    it "ignores formatting in input" do
        formatted_output = "2 - i love sandwiches\n1 - sandwiches i love\n1 - love sandwiches i\n"
        expect { counter("I love Sandwiches. I LOVE SANDWICHES!!!") }
        .to output(formatted_output).to_stdout
    end
end