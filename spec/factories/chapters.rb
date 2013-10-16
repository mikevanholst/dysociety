
FactoryGirl.define do
  factory :chapter do
    title { Faker::Lorem.sentence(4) }
    teaser { Faker::Lorem.paragraph(3) }
    content { Faker::Lorem.paragraphs(8) }
    free true
    sequence(:number)
 
  end
end
