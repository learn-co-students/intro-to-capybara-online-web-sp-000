require 'spec_helper'

#Capybara – A Ruby library that works with RSpec to allow you to write extremely powerful, simple, and semantic integration tests for web applications.
#Integration Tests – Tests that exercise the outermost part of our application code from the user's perspective, simulating user interactions with the application via its interface (in this example, a web browser and HTML).
#visit & page – Capybara methods for controlling the test user's browser and examining the current state of the page as they 'see' it.
describe "GET '/' - Greeting Form" do
  # Code from previous example
  it 'welcomes the user' do
    #Our test is telling Capybara to visit the / URL. It then sets the expectation that the body of the page
    # returned should include at least the text Welcome! somewhere.
    visit '/' #visit method navigates the test's browser to a specific URL
              # The argument it accepts is a string for the URL you want to test.
              # Since we want to test our '/' root URL, we say visit '/', and Capybara will load that page within our test..
    expect(page.body).to include("Welcome!") #page.body method will dump out all of the HTML in the current page as a string.
  end

  #have_selector, have_field, & have_text – Capybara matchers for ensuring that the page contains certain matching HTML or text.
  # New test
  it 'has a greeting form with a user_name field' do
    visit '/' #we tell Capybara to visit the page at '/'
# Once that is done, we set some expectations against the page object that represent the user looking at the page in their browser.
    expect(page).to have_selector("form") #page has an HTML selector for form, meaning that the page contains an HTML element that matches the form tag.
                                          #have_selector matcher come from Capybara that added that to RSpec. do you have HTML that matches the following selector?"
    expect(page).to have_field(:user_name) #we expect the page to have a form field called user_name
  end
end

#fill_in & click_button – Capybara methods for mimicking user activities, such as filling in form fields or clicking buttons.
describe "POST '/greet' - User Greeting" do
  it 'greets the user personally based on their user_name in the form' do
    visit '/' #load the form into the page object

    fill_in(:user_name, :with => "Avi")# Capybara method fill_in to fill in the input field user_name with 'Avi'.
    click_button "Submit" #to submit the form. That HTML interaction, submitting a form, will trigger a new HTTP request in the Capybara session and page object.
                          #When a user submits a form, the browser loads a new page, and they see new content.
                          #Similarly, when Capybara submits a form, the page object is appropriately updated. page no longer contains the original greeting form, but, rather, after click_button is called, page now contains the response to the greeting form.
    expect(page).to have_text("Hi Avi, nice to meet you!") #In response to Capybara's submission of the greeting form, we can expect the page to have_text "Hi Avi, nice to meet you!".
  end
end