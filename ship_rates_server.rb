require 'sinatra'

class ShipRatesServer < Sinatra::Base
  get '/heartbeat' do
    "ok"
  end
end
