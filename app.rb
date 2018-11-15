class Application < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/greet' do
    @name = params[:user_name]
    # raise @name.inspect
    erb :greet
  end

end
