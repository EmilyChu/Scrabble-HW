
require "minitest/autorun"
require 'pry'

def possible_words letter
    possbilities=[]
    combinations = letter.permutation.to_a
    combinations.each  do  |x|
    	possibilities.push(x.join)
    end
    return possibilities
end

def word_finder
    dictionary = ["cat", "at", "bat", "act"]
    possible_words.each do |x|
	 dictionary.include?(x)
	 puts x
    end
end

class TestScrabble < Minitest::Test
  def test_is_string
  	assert true, word_finder(["c", "a", "t"]).is_a(String)
end
=begin
  def test_make_word
  	 def test_permutations
 assert true, letter_combinations(["c", "a", "t"]).include?(["a", "c", "t"])
 end
  	
  	match_str make_word(["c", "a", "t"]), "cat"
=end
