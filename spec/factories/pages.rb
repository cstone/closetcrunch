# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    title "About Us"
    slug "about-us"
    content "<h1>About Us</h1><p>Lorem ipsum</p>"
    keywords "about us, about closetcrunch"
    description "Read about Closetcrunch. Who we are and what we stand for."

    trait(:published) do
      published true
    end

    trait(:unpublished) do
      published false
    end
  end

  factory :published_page, parent: :page do
    published
  end

  factory :unpublished_page, parent: :page do
    unpublished
  end
end
