FactoryBot.define do
  factory :post do
    title { "MyString" }
    body { "MyText" }
    category_id { 1 }
    user_id { 1 }
  end
end
