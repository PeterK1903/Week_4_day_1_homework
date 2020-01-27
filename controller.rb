require ('sinatra')
require ('sinatra/contrib/all')

require_relative('./models/rockpaperscissors')
also_reload('./models/*')

get '/game/:player1/:player2' do
  game = RockPaperScissors.new(params[:player1], params[:player2])
  @winning_hand = game.playing_game()
  @winning_player = game.return_winner()
  erb(:result)
end

get '/' do
  erb(:home)
end

get '/rock/scissors' do
  "Rock Wins!"
end
