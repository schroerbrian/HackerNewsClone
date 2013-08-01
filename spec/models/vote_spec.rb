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

require 'spec_helper'

describe Vote do

	it { should belong_to(:votable) }
	it { should validate_presence_of(:votable) }


end

