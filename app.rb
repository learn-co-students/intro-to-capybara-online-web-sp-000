class Application < Sinatra::Base
  # Old route from previous tests
  get '/' do
    erb :index
  end
 
  # New route to respond to the form submission
  post '/greet' do
    erb :greet
  end
  
  get '/user_name' do
    erb :user_name
  end
  
end