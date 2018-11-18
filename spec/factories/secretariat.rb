FactoryBot.define do

  factory :secretariat do
    name { "Vernie Weber" }
    description { "A degenerate, am I? Well, you are a festisio! See? I can make up words too, sister." }
    image { File.open(File.join(Rails.root, 'public/seed_secretariat.jpg')) }
  end
end
