require "minitest/autorun"
require 'pry'

def word_finder letter
    # letter = ["a","c","t"]
    combinations = letter.permutation.to_a
    # puts combintations.include?(["a","c","t"])
    #possibles.each |x| do x.join  put each x.join  result in new array,  sub array comp to dictionary
end

puts word_finder["c", "a", "t"].include?(["a","c","t"])

def dictionary
	dictionary = ["cat", "at", "bat", "act"]
end

class TestScrabble < Minitest::Test
 def test_permutations
 assert true, word_finder ["c", "a", "t"].include?(["a","c","t"])
 end
