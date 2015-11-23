# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :report do
    name "MyString"
    email "MyString"
    phone "MyString"
    feed_type "MyString"
    subject "MyString"
    description "MyText"
  end
end
