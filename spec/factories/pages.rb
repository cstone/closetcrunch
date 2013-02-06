# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    title "MyString"
    slug "MyString"
    content "MyString"
    keywords "MyString"
    description "MyString"

    trait :published do
      published true
    end

    trait :unpublished do
      published false
    end
  end

  factory :published_page,   traits: [:published]
  factory :unpublished_page, traits: [:unpublished]
end
