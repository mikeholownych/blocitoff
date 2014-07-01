# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item, :class => 'Items' do
    list nil
    content "MyString"
  end
end
