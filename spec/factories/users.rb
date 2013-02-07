salt = 'asdasdastr4325234324sdfds'

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    salt { salt }
    crypted_password { Sorcery::CryptoProviders::BCrypt.encrypt("mypassword", salt) }
  end
end
