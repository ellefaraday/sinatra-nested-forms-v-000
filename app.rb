require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirates][:ships].each do |details|
        Pirate.new(details)
      end

      @ships = Ships.all

      erb :show
    end
  end
end
