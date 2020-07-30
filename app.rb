class Application < Sinatra::Base
  # Write your code here!
  get '/' do
    erb :index
  end
  post '/greet' do
    erb :greet
  end

end

#learn
# visit
# page

# have_selector
# have_field
# have_text

# fill_in
# click_button

# diferencia entre 
# get
# post