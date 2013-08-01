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

require 'spec_helper'

describe Comment do

	it { should belong_to(:commentable) }
	it { should have_many(:comments) }
	
	it { should validate_presence_of(:text) }
	it { should validate_presence_of(:commentable) }


end
