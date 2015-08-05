require('sinatra')
require('sinatra/reloader')
require('./lib/rps.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @result = params.fetch('player1').rps('player2')
  erb(:result)
end
