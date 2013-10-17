# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :quiz do
    name "MyString"
    size 1
    score 1
    success "MyString"
    failure "MyString"
  end
end
