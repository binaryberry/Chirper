Given(/^I am on the homepage$/) do
	expect(current_path).to be ('/')
	page.should have_content('Chirper, because life is better when your voice is heard.')
	page.should have_content('Sign up')
	page.has_field?("User Name") 
	page.has_field?("Password") 
end


# When(/^I input my email, password and password confirmation$/) do
#   fill_in( "User Name", :with => user_name )
#   fill_in( "Password", :with => user_name + "-test-passwd" )
#   click_button( "Logon" )
# end

# Then(/^I should see "(.*?)"$/) do |arg1|
#   pending # express the regexp above with the code you wish you had
# end
