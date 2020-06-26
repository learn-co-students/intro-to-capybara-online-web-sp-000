require 'spec_helper'

describe "GET '/' - Greeting Form" do
  # Code from previous example
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end

  # New test visit method navigates the tests browser to a specific URL
  it 'has a greeting form with a user_name field' do
    visit '/'

    expect(page).to have_selector("form")
    expect(page).to have_field(:user_name)
  end
end

describe "POST '/greet' - User Greeting" do
  it 'greets the user personally based on their user_name in the form' do
    visit '/'

    fill_in(:user_name, :with => "Avi")
    click_button "Submit"

    expect(page).to have_text("Hi Avi, nice to meet you!")
  end
end


#Our new test has a similar setup to the first test– we tell Capybara to visit the page at '/'. Once that is done, we set some expectations against the page object that represent the user looking at the page in their browser. We can simply assert that the page has an HTML selector for form, meaning that the page contains an HTML element that matches the form tag.

#Where does this magic have_selector matcher come from? That's right, Capybara has added that to RSpec. Capybara page objects respond to methods that relate intimately to HTML and the DOM (Document Object Model) that defines web applications. You can literally ask the page object: "Hey, do you have HTML that matches the following selector?"

#visit '/'
# we use the Capybara method fill_in to fill in the input field user_name with 'Avi'.

# we click_button "Submit" to submit the form. That HTML interaction, submitting a form, will trigger a new HTTP request in the Capybara session and page object.
