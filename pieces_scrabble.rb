
require "minitest/autorun"
require 'pry'


#Simplest Solution:
#Get array of all possible permutations of 3 letters 
#Convert each permutation to string
#Compare array of permutation strings to dictionary array (which also contains only strings)
#If Member of both sets,  word is found


=begin
--Assumes input is always Array containing 3 single-letter strings. Current code does not limit, enforce, or otherwise require this.
--Finds all permutations of letter combinations from initial array . each permutation is a new array
--Each permutation is converted to a string (arguments in order in array)
--Strings pushed to new array, which will contain strings of all possible combinations of 3 letters (possible words)
=end


def possible_words letter
    possibilities = []
    combinations = letter.permutation.to_a += letter.permutation(2).to_a += letter.permutation(1).to_a #not really using addition here: Is something like <<.each= or even && better here?
    combinations.each  do  |x|
      possibilities.push(x.join)
    end
    return possibilities
end



#Compares array of all possible words for given 3-letter-input to defined dictionary array.
#Pushes any word made from 3-letter-input that is also in dictionary to Results array.
#Returns results
#Prints out results array

def word_finder letter
    dictionary = ["cat", "at", "bat", "act", "a", "ta"]
    results = []
    possible_words.each do |x|
  if dictionary.include?(x)
    results.push(x)
  end
    end
    return results
    puts results
end

class TestScrabble < Minitest::Test
  letter = ["c", "a", "t"] 

#tests are pretty strict/narrow. Need to be more flexible

  def test_all_word_combos
    #count arguments of possibilities array = 15 
    #ca ct ac at ta tc; cat, atc, act, tac, tca, cta, a, b, c
  end 

  def test_only_real_words
    #test all words in results are found in dictionary
  end

  def test_only_words_from_input_letters
    #no words in results set containing letters not in input
  end

  def test_manual_output_check
    # results array contains all and only  ["cat", "at", "act", "a", "ta"]. Does NOT contain "bat".
  end  

end

=begin
  ## old test to try and see if join.x was still producing strings and if this bound over
  def test_is_string
  word_finder.each.class == String
  end

  def test_make_word
     def test_permutations
 assert true, letter_combinations(["c", "a", "t"]).include?(["a", "c", "t"])
 end

    Is this a better is_string? test:  .respond_to?(:to_s)

    can we use match_str??
=end