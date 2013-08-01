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

require "bcrypt"

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates_presence_of :name, :email

  include BCrypt 

  def password 
   Password.new(password_hash) 
  end

  def password=(new_password)
  	self.password_hash = Password.create(new_password)
	end

	has_secure_password

end
