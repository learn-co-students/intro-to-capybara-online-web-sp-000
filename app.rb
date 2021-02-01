class Application < Sinatra::Base
  # Write your code here!
  get '/' do 
     erb :index
  end

  post '/greet' do
    @username = params[:user_name]

    erb :greet
  end
end