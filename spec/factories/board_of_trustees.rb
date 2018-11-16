FactoryBot.define do
  factory :board_of_trustees do
    name { "Board_of_trusteesName" }
    description  { "Board_of_trusteesDescription" }
    image { File.new("#{Rails.root}/spec/fixtures/seed_bot.jpg") }
  end
end
