require 'spec_helper'
require_relative '../ship_rates_server'

ShipRatesServer.set :environment, :test
ShipRatesServer.set :run, false
ShipRatesServer.set :raise_errors, :true
ShipRatesServer.set :logging, false

describe ShipRatesServer do
  include Rack::Test::Methods
  def app
    ShipRatesServer
  end

  describe "/heartbeat" do
    it "returns ok" do
      get '/heartbeat'
      last_response.body.should == "ok"
    end
  end
end
