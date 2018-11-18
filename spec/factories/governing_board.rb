FactoryBot.define do

  factory :governing_board do
    name { "Bart Bartoletti" }
    description { "I’ve got an idea–an idea so smart that my head would explode if I even began to know what I’m talking about." }
    image { File.open(File.join(Rails.root, 'public/seed_govboard.jpg')) }
  end
end
