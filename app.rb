require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/palindrome')

get('/form') do
  erb(:form)
end

get('/results') do
  word = params.fetch('word')
  result_boolean = word.palindrome()

  if result_boolean
    result_string = word + " is a palindrome!"
  else
    result_string = word + " is not a palindrome. Sorry."
  end

  @result = result_string
  erb(:results)
end
