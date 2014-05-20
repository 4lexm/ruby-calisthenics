module FunWithStrings
  def palindrome?
    str = self.downcase.gsub(/[^a-z]/i, '')
    str == str.reverse
  end
  def count_words
    h = Hash.new(0) 
    words = self.lstrip.split(/\W+/)
    words.each do |word|
      h[word.downcase] += 1
    end
    h
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
