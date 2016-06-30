require("sinatra")
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

get('/results') do
  @anagram = params.fetch('anagram').anagrams(params.fetch('anagramTwo'))
  erb(:results)
end
