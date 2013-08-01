class ChangeColumnCommmentableIdtoCommentableId < ActiveRecord::Migration
	  def change
	  	rename_column :comments, :commmentable_id, :commentable_id 	#t.change the link_id to commmentable_id in every commments
	 	end
	end
