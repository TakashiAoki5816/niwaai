FactoryBot.define do
  factory :user do
    email                   {"test@example.com"}
    name                    {"tarou"}
    image                   {File.open("#{Rails.root}/public/images/test_image.jpg")}
    password                {"00000000"}
    password_confirmation   {"00000000"}
  end
end
