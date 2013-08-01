# == Schema Information
#
# Table name: votes
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  votable_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  votable_type :string(255)
#

class Vote < ActiveRecord::Base

  belongs_to :votable, polymorphic: true 
  validates_presence_of :votable 

end
