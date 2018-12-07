# Anagram Solver in Ruby
This is an ruby app that is interacted with via irb. It was set as a company tech test for junior developers and so I have documented the instructions given and my approach.

### Instructions
```
Imagine you are in a work environment, and a colleague has asked you to create a simple interactive application which can solve anagrams.

For a word entered by the user, generate a list of all possible anagrams contained in this wordlist.

For instance, if the user enters paste, your program should produce the results pates, peats, septa, spate, tapes, and tepas.

Consider especially how we will know if your code is correct, without having to run it exhaustively against the entire word list.

You may also wish to consider how your code handles edge cases such as hyphenated words.
```

### How to run the app

##### Download the app
```
$ git clone git@github.com:LazySamir/anagram-solver-ruby.git
$ cd anagram-solver-ruby
$ bundle
```

### How to run tests

`$ rspec`

### Approach
##### Testing 
The .txt file is very large and I can't easily tell what words are correct anagrams. 
For this reason I think I'll make my own txt file for the purpose of testing. 

##### The code
From an initial look, I think this can be solved in a few steps.
1. create a method to be used via irb
2. iterate through the lines of the txt file given.
3. return the line of the .txt file if, when alphabetically sorted, it matches the alphabetically sorted of a given word.