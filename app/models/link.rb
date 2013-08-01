# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  title      :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Link < ActiveRecord::Base
  attr_accessible :title, :url #:comments_attributes

  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates_presence_of :url

  #accepts_nested_attributes_for :comments
end
