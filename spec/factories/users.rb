password_salt = 'asdasdastr4325234324sdfds'

FactoryGirl.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  factory :user do
    email
    password 'mypassword'
  end

  factory :logged_in_user, class: :user do
    email
    password 'secret123'
    salt "asdasdastr4325234324sdfds"
    crypted_password Sorcery::CryptoProviders::BCrypt.encrypt("secret123", "asdasdastr4325234324sdfds")
  end
end
