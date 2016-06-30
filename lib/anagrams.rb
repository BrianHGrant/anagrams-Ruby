class String
  define_method(:anagrams) do |sentence|
    words = sentence.split(' ')
    input = self.split('').sort!
    resultArray =[]
    words.each() do |word|
      letters = word.split('').sort!
      if (letters == input)
        resultArray.push(word)
        resultArray.push("is a anagram!")
      else
        resultArray.push(word)
        resultArray.push("is not a anagram!")
      end
    end
    resultArray.join(" ")
  end
end
