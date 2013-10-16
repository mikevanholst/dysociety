FactoryGirl.define do
  factory :company do
    name { Faker::Company.name}
    web_address { Faker::Internet.domain_name }
    description { Faker::Lorem.paragraphs(3) }
    :category
 
  end
end
