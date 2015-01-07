class String
  define_method(:palindrome) do
    word = self
    palindrome = false

    if word == word.reverse()
      palindrome = true
    end
    palindrome

  end
end
