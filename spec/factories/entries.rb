# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    title "MyString"
    description "MyText"
    category_id 1
    user_id 14
  end
end
