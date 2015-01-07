class String
  define_method(:palindrome) do
    word = self
    word = word.gsub(' ','')
    palindrome = false

    # reverse word easy way:
    # word_reversed = word.reverse()

    # reverse word hard way:
    reversed_array = []
    split_word = word.split("")
    split_word.each() do |letter|
      reversed_array.unshift(letter)
    end
    word_reversed = reversed_array.join()

    #check if word matches reversed word
    if word == word_reversed
      palindrome = true
    end

    #return our boolean
    palindrome

  end
end
