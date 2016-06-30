require("sinatra")
require('capybara/rspec')
require("anagrams.rb")

describe("String#anagrams") do
  it("Return true if a word is a anagram")do
    expect("cat".anagrams("act")).to(eq(true))
  end
end
