FactoryBot.define do

  factory :board_of_trustee do
    name { Faker::Name.name }
    description { Faker::FamilyGuy.quote }
    image { File.open(File.join(Rails.root, 'public/seed_bot.jpg')) }
  end
end
