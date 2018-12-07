require "./lib/solver.rb"

describe "user can solve lowercase anagrams" do
  it "shows lowercase word matches" do
    solver = Solver.new
    expect(solver.find_anagrams('monkey', './spec/test-assets/test_wordlist.txt')).to eq(['monkey', 'omnkey', 'ynkemo', 'meokny', 'koynem'])
  end
end