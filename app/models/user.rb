class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :email, :password, :salt, :crypted_password

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
