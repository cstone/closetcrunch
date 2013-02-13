class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :username, :email, :password, :salt, :crypted_password, :agree, :authentications_attributes

  has_many :authentications, dependent: :destroy

  accepts_nested_attributes_for :authentications

  scope :recent, -> { order 'id desc' }
  scope :most_active, -> { order 'sign_in_count desc' }

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :agree, acceptance: true
end
