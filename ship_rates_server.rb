require 'sinatra'
require 'haml'
require 'kramdown'

class ShipRatesServer < Sinatra::Base
  get '/' do
    haml :index
  end

  get '/heartbeat' do
    "ok"
  end
end
