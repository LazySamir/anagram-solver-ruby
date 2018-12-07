class Solver
  def find_anagrams(word, wordlist = './assets/wordlist.txt')
    anagrams = []
    File.foreach(wordlist) {|list_word| anagrams << list_word.strip if ((word.downcase.chars.sort.join) == (list_word.downcase.chars.sort.join.strip))}
    anagrams
  end
end