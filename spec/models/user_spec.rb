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

require 'spec_helper'

describe User do

	before { @user = User.new(name: "Example User", email: 
		"user@example.com", password: "foobar", password_confirmation: 
		"foobar") }

	subject { @user }

	it { should respond_to(:name) }
	it { should respond_to(:email) }
	it { should respond_to(:password_digest) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }

	it { should have_many(:comments) }
	it { should have_many(:votes) }

	it { should respond_to(:authenticate) }

		describe "return value of authenticate method" do 
			before { @user.save }
			let(:found_user) { User.find_by(email: @user.email) }

		describe 'with valid password' do 
			it {should eq found_user.authenticate(@user.password) }
		end

		describe "with invalid pwd" do 
			let(:user_for_invalid_password) { found_user.authenticate
				("invalid") }

			it { should_not eq user_for_invalid_password }
			specify { expect(user_for_invalid_password).to be_false }
			end
		end  

	describe "when pwd is not present" do
		before do
			@user = User.new(name: "Ex user", email: "user@user.com",
				password: " ", password_confirmation: "  ")
		end
		it {should_not be_valid}
	end

	describe "when password doesn't match confirmation" do
	  before { @user.password_confirmation = "mismatch" }
	  it { should_not be_valid }
	end




end
