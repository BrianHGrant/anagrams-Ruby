class String
  define_method(:anagrams) do |word|
    word = word.split('').sort!
    input = self.split('').sort!
    if (word == input)
      return "This is a anagram!."
    else
      return "This is not a anagram!"
    end
  end
end
