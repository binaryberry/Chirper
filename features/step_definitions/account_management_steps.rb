require './spec/spec_helper'

Given(/^I am on the homepage$/) do
	visit('/')
	page.should have_content('Chirper, because life is better when your voice is heard.')
	# page.should have_content('Sign up')
	# page.has_field?("User Name") 
	# page.has_field?("Password") 
end


When(/^I input my email, password and password confirmation$/) do
  fill_in( "email", :with => "Rihanna" )
  fill_in( "password", :with => "assword" )
  fill_in( "password_confirmation", :with => "assword" )
  click_button( "Sign up" )
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content(text)
end
