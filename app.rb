class Application < Sinatra::Base
  # Write your code here!
 get '/' do
   erb :index
 end

 post '/greet' do
   raise params.inspect
   erb :greet
 end

end
