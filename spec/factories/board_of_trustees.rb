FactoryBot.define do

  factory :board_of_trustee do
    name { "Shondra Donnelly" }
    description { "Joe, gag on my fat dauber." }
    image { File.open(File.join(Rails.root, 'public/seed_bot.jpg')) }
  end
end
