require "./lib/solver.rb"

describe "user can solve mixed case anagrams" do
  it "shows mixed case word matches" do
    solver = Solver.new
    expect(solver.find_anagrams('elephant', './spec/test-assets/test_wordlist.txt')).to eq(["Elephant", "phaNteLe", "elphAnte", "PATHENEL", "thenepal"])
  end
end