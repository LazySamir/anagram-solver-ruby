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

### User Stories

```
As a User, 
So I can cheat in scrabble,
I want to know which words are anagrams of a given word.

As a User, 
So I can use even more words,
I want to include proper nouns, acroymns and initialism.
    - it is done when it solves anagrams with capital letters
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

##### Reflection
1. This app could have been made as a single .rb file on root with no classes. I choose this path as I wanted to allow for 
easy extension however on reflection this may have been ambitious given the one hour timeframe. 
2. The logic for this task was pretty straight forward once I realised anagrams are identical when sorted. 
3. I am not comfortable with my use of an array to show anagrams. I originally had the code puts the result of each successful
iteration (which looked better, and was neater code) but testing if an array was the simplest solution given the time constraint. 

##### How would I extend this app
1. Work out and implement how to incorporate hyphens. Currently, hypens will only be solved correctly if both the given word
and the anagram have hyphens in them.
2. I would make a better interface for the user. Currently they run the command and get a result via an array. I would
like to have put a nice message and interperlated the results.

