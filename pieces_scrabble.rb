
require "minitest/autorun"
require 'pry'

#assumes finding all words from set of 3-letter-set

def possible_words letter
    possibilities = []
    combinations = letter.permutation.to_a + letter.permutation(2).to_a + letter.permutation(1).to_a
    combinations.each  do  |x|
    	possibilities.push(x.join)
    end
    return possibilities
end

def word_finder
    dictionary = ["cat", "at", "bat", "act", "a", "ta"]
    results = []
    possible_words.each do |x|
	if dictionary.include?(x)
		results.push(x)
	end
    end
    return results
end

class TestScrabble < Minitest::Test
  letter = ["c", "a", "t"]

  def test_is_string
  word_finder.each.class == String
  end

end
=begin
  def test_make_word
  	 def test_permutations
 assert true, letter_combinations(["c", "a", "t"]).include?(["a", "c", "t"])
 end
  	
  	match_str make_word(["c", "a", "t"]), "cat"

  	Is this a better is_string? test:  .respond_to?(:to_s)
=end