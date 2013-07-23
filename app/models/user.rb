# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  
  has_secure_password
  before_save {self.email = email.downcase}
  attr_accessible :email, :name,:password, :password_confirmation
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\Z/i
  validates :name,:presence => true,:length => {:maximum => 50 }
  validates :email,presence:true,format:{with:VALID_EMAIL_REGEX},uniqueness:{case_sensitive:false}
  validates :password,length:{minimum:6}

  has_secure_password
end
