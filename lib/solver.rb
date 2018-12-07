class Solver
  def find_anagrams(word, wordlist = './assets/wordlist.txt')
    anagrams = []
    File.foreach(wordlist) {|list_word| anagrams << list_word.strip if ((word.chars.sort.join) == (list_word.chars.sort.join.strip))}
    anagrams
  end
end