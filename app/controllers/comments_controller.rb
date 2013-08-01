class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def create
		@link = Link.find(params[:comment].delete(:link_id))
		@comment = @link.comments.build(params[:comment])  #
		flash[:errors] = @comment.errors.messages unless @comment.save
		redirect_to @link #rails know this will send us to our show page
	end

	def edit
	end

	def destroy
	end
	
end
