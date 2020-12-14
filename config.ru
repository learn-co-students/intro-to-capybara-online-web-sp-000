# the final piece of the puzzle. puts everything together and starts our Sinatra Application
# this is the file shotgun or rackup will read to start your local application server,
# and it's also the file our test suite is using to define our application -- remember Rack::Builder.parse_file('config.ru').first? -- in our spec/spec_helper.rb
# This file acts as the entry point for starting up our app

require 'sinatra' # require the sinatra gem
 
require_relative './app' # require relative the file that defines our main Application controller
 
run Application # run our Application controller to start our web application
