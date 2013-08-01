# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  text             :text
#  user_id          :integer
#  commentable_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  commentable_type :string(255)
#

class Comment < ActiveRecord::Base
  attr_accessible :text
  
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates_presence_of :text, :commentable 
  
end
