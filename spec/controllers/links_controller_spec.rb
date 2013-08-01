require 'spec_helper'

describe LinksController do

	let(:link) { FactoryGirl.create(:link) }

	describe '#index' do

		it 'should assign @links' do
			get :index 
			links = Link.all
			expect(assigns(:links)).to eq(links)
		end

		it 'should render index.html' do
			get :index
			expect(response).to render_template :index
		end
	end

	# describe '#edit' do

	# 	it 'should find by id' do
	# 			get :edit, id: link.id 
	# 		expect(assigns(:link)).to eq(link)
	# 	end
	# end

	describe '#show' do

		it 'should show a specific link by id' do
			get :show, id: link.id 
		expect(assigns(:link)).to eq(link)
		end
	end

	describe '#new' do 
		before :each do 
			get :new
		end

		it 'should render new.html' do 
			get :new 
			expect(response).to render_template :new
		end

		# it 'should assign @link' do
		# 	expect(assigns(:link)).to eq(Link.new)
		# end 

	end

	describe '#create' do 
			before :each do 
				@link_params = {
					title: 'title',
					url: 'www.url.com'
				}
			end

			it 'should create a new link' do 
				expect {
				post :create, link: @link_params #FactoryGirl.build(:link).attributes
				}.to change(Link, :count).by(1)
			end
		end

	describe '#edit' do

		it 'should find by id' do
				get :edit, id: link.id 
			expect(assigns(:link)).to eq(link)
		end
	end

	describe '#update' do 
	
		it 'should update a link' do
			link
			new_link = { title: "new title", url: "newurl" }
				put :update, id: link.id, link: new_link 

				link.reload
				link.title.should == new_link[:title]
				link.url.should == new_link[:url] 
			end
			
			it 'should render index.html' do
				get :index
				expect(response).to render_template :index
			end
	
	end

	describe '#destroy' do
	
		it 'should delete a link' do
			link
			expect{
				delete :destroy, id: link.id
			}.to change(Link, :count).by(-1)
		end
	end

end