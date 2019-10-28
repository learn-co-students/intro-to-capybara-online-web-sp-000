class Application < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/greet' do
    erb :greeting
  end

end