FactoryBot.define do
  factory :comment do
    text { "MyString" }
    post_id { 1 }
    user_id { 1 }
  end
end
