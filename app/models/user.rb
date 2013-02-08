class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :email, :password, :salt, :crypted_password, :agree

  scope :recent, -> { order 'id desc' }

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :agree, acceptance: true

  protected

  # Protected: Authenticate a User without checking if they've activated their account
  #
  # credentials - The same splat of credentials that would be passed into Sorcery's
  #               login() method
  #
  # Examples
  #
  #   User.authenticate_without_active_check(params[:email], params[:password])
  #
  # Returns an instance of User
  def self.authenticate_without_active_check(*credentials)
    prevent_check = self.sorcery_config.before_authenticate.delete :prevent_non_active_login
    user = self.authenticate *credentials
    self.sorcery_config.before_authenticate << prevent_check if prevent_check
    return user
  end
end
