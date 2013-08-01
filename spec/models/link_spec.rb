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

require 'spec_helper'

describe Link do

	it { should have_many(:comments) }
	it { should have_many(:votes) }

	it { should validate_presence_of(:url) }

end
