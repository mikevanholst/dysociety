FactoryGirl.define do
  factory :category do
    name {  ["Internet", "Home", "Financial"].sample }
    web_address { Faker::Internet.domain_name }
    description { Faker::Lorem.paragraphs(3) }
    :category
 
  end
end
