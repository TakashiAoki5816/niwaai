FactoryBot.define do
  factory :comment do
    content     {"こんにちは"}
    user_id     {"1"}
    post_id     {"1"}
  end
end