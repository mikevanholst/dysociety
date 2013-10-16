# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    text "MyString"
    right "MyString"
    wrong_1 "MyString"
    wrong_2 "MyString"
    wrong_3 "MyString"
    success "MyString"
    failure "MyString"
  end
end
