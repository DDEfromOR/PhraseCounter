# PhraseCounter
This is a simple command line utility that takes a list of file names as input and/or input piped via STDIN.
The output will be in the form of a list of up to the top 100 three word phrases, as ranked by frequency within
the provided text. If multiple input files are provided, they will be analyzed as one body of text. Punctuation,
line endings, and casing are ignored in all input.

The output is formatted to print each phrase on a new line, for example:
```
320 - of the same
130 - the same species
125 - conditions of life
117 - in the same
110 - of natural selection
104 - from each other
102 - species of the
89 - on the other
```

# Usage
With passed in file names:
``` ./lib/PhraseCounter.rb filename1.txt filename2.txt ... ```
With input via STDIN:
```cat filename1.txt | ./lib/PhraseCounter.rb ```

# Testing
This solution includes tests written for the RSPEC testing library.
To run tests simply execute `./rspec`