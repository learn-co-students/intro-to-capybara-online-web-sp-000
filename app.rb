class Application < Sinatra::Base #gives all methods to turn into a Sinatra controller
  
  get '/' do
    erb :index
  end

  post '/greet' do
    erb :greet
  end
  
end