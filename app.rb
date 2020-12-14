# main application file, defining the controller that will power this web app
class Application < Sinatra::Base # inherit from Sinatra::Base to give it all of the web superpowers needed to transform the standard Ruby class into a Sinatra Controller

  get '/' do # use the Sinatra DSL to create a GET route at the / URL
    # we tell our app to respond to HTTP Get requests to / by rendering the designated ERB template or HTML
    erb :index # tells the app to deliver to the user's browser, the file in views/index.erb
  end

  post '/greet' do
    erb :greet
  end
end