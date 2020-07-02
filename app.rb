
  # Write your code here!
class Application < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/greet' do
    erb :greet
  end
  
end

