# Write your code here!
#our config.ru requires the sinatra gem. It then require_relatives the required file app.rb that defines our main Application controller.
# Finally, we run our Application controller to start our web application.
# When we run shotgun, the gem will look for a config.ru file if no other file is specified.
# This file acts as the entry point for starting up your application.

require 'sinatra'
 
require_relative './app'
 
run Application

#config.ru file to put everything together and start our Sinatra application. This is the file shotgun or rackup will read to start your
# local application server, and it's also the file our test suite is using to define our application –– remember Rack::Builder.parse_file('config.ru').first?