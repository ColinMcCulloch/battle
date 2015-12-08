require 'sinatra/base'

class BattleApp < Sinatra::Base
  get '/' do
    'Hello BattleApp!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
