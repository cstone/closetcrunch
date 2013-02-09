class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :email, :password, :salt, :crypted_password, :agree, :authentications_attributes

  has_many :authentications, dependent: :destroy

  accepts_nested_attributes_for :authentications

  scope :recent, -> { order 'id desc' }

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :agree, acceptance: true
end
