require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/find_replace')

get('/form') do
  erb(:form)
end

get('/results') do
  erb(:results)
end
