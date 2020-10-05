FactoryBot.define do
  factory :post do
    garden_name    {"清澄庭園"}
    address        {"東京都江東区清澄3丁目3-9"}
    title          {"枯山水"}
    image          {File.open("#{Rails.root}/public/images/test_image.jpg")}
    content        {"@@@@@@@@@@@@@@@@"}
    user_id        {"1"}
  end
end
