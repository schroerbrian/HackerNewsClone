class LinksController < ApplicationController

	def index
		@links = Link.all
	end
	
	def new
		@link = Link.last
	end

	def create 
	 @link = Link.new(params[:link])
	  if @link.save 
	 	 render :show 
	  else 
	 	 flash[:error] = @link.errors.messages
	 	 render :new
	  end
	end	

	def show 
		@link = Link.find(params[:id])
	end

	def edit
		@link = Link.find(params[:id])
	end

	def update
		@link = Link.find(params[:id])
		if @link.update_attributes(params[:link])
			render :show
		else
			render :edit
		end
	end

	def destroy
		link = Link.find(params[:id])
		link.delete
		redirect_to links_path
	end
end