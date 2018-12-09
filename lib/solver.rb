class Solver
  def find_anagrams(word, wordlist = './assets/wordlist.txt')
    anagrams = []
    File.foreach(wordlist) {|list_word| anagrams << list_word.strip if ((normalise(word)) == (normalise(list_word).strip))}
    anagrams
  end
  
  private
  
  def normalise(word)
    word.downcase.chars.sort.join
  end
  
end