# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_hash   :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

require File.dirname(__FILE__) + '/../test_helper'

class UserTest < ActiveSupport::TestCase
	
	test "setting the password sets the password_hash" do
		user = User.new
		user.password = "secret"
	end

	test "getting the password gets password from the password_hash"
		

end
