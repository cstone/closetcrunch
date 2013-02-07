password_salt = 'asdasdastr4325234324sdfds'

FactoryGirl.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  factory :user do
    email
    password 'mypassword'
    password_confirmation 'mypassword'
  end

  factory :logged_in_user, class: :user do
    email
    password 'secret123'
    password_confirmation 'secret123'
    salt password_salt
    crypted_password { Sorcery::CryptoProviders::BCrypt.encrypt("secret123", password_salt) }
  end
end
