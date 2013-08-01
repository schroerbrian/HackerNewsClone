require 'spec_helper'

feature 'visit homepage' do 
	
	let(:link) { FactoryGirl.create(:link) }

	scenario 'has title' do
		visit '/links'
		expect(page).to have_content 'Hacker Clones'
	end

	scenario 'has links' do
		link
		visit '/links'
		expect(page).to have_content link.title
	end

	scenario 'has login' do
		visit '/links'
		expect(page).to have_link 'Login'
	end

	scenario 'has submit link' do
		visit '/links'
		expect(page).to have_link 'Submit'
	end	

end