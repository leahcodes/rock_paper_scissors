require('sinatra')
require('sinatra/reloader')
require('./lib/rps.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  player1 = params.fetch('player1')
  player2 = params.fetch('player2')
  @result = player1.rps(player2)
  erb(:result)
end
