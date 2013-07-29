class Comment < ActiveRecord::Base
  attr_accessible :text

  belongs_to :link

  validates_presence_of :text, :link
  
end
