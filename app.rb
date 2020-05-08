class Application < Sinatra::Base
  get '/' do
	erb :index	
  end

   post '/greet' do
   	# raise params.inspect
	erb :greet	
  end

end