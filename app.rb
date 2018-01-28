require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :pirates
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirates][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ships.all

      erb :show
    end
  end
end
