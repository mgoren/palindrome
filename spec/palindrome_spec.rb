require('rspec')
require('palindrome')

describe('string#palindrome') do

  it("returns false if string is not a palindrome") do
    expect("foo".palindrome()).to(eq(false))
  end

  it("returns true if string is a palindrome") do
    expect("racecar".palindrome()).to(eq(true))
  end


end
