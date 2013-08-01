require 'spec_helper'

feature 'signing up' do 
	scenario 'with valid email' do
		visit new_user_path
		fill_in :email, with: 'example@gmail.com'
		fill_in :username, with: 'Jackie'
		fill_in :password, with: 'password'
		fill_in :password_confirmation, with: 'password'
		# click_button 'Submit'
		expect(page).to have_content 'hi'
	end
end