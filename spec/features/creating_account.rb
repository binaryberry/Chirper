# In order to use chitter as a maker I want to sign up to the service
# In order to user chitter as a maker I want to log in
# In order to avoid others to use my account as a maker I want to log out

require 'spec_helper'

feature "User signs up" do

		before(:each) do
		User.create(:email => 'tat@gmail.com', 
					:password => "assword" 
					:password_confirmation => "assword")
		end
		
		scenario "when signing up" do
				expect { sign_up }.to change(User, :count).by(1)
				expect(page).to have_content("Welcome, tat@gmail.com")
				expect(User.first.email).to eq("tat@gmail.com")
		end

		# scenario "with a password that doesn't match" do
		# 	expect{ sign_up('a@a.com', 'assword', 'wrong') }.to change(User, :count).by(0)
		# 	expect(current_path).to eq('/users')
		# 	expect(page).to have_content("Sorry, your passwords don't match")
		# end

		# scenario "with an email that is already registered" do
		# 	expect { sign_up }.to change(User, :count).by(1)
		# 	expect { sign_up }.to change(User, :count).by(0)
		# 	expect(page).to have_content("This email is already taken")
		# end