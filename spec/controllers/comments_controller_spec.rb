require 'spec_helper'

describe CommentsController do
	
	let(:link) { FactoryGirl.create(:link) }

	describe '#create' do
		before :each do
			@comment_params = {
				text: 'hi!', 
				link_id: link.id
			}
		end

		it 'should create a new comment' do
			
			expect {
				post :create, :comment => @comment_params
			}.to change(Comment, :count).by(1)
		end
	end

	
	

	#describe '#destroy' do
# links
# 		comment.delete
# 		redirect_to 
# 	end

end
