# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

100.times do
  Donor.create({
                name: Faker::Name.name,
                description: Faker::FamilyGuy.quote,
                image: File.open(File.join(Rails.root, 'public/seed_donor.jpg'))
                })
end

15.times do
  Work.create({
                title: Faker::Name.name,
                description: Faker::FamilyGuy.quote,
                image: File.open(File.join(Rails.root, 'public/seed_work.jpg'))
                })
end

5.times do
  BoardOfTrustee.create({
                name: Faker::Name.name,
                description: Faker::FamilyGuy.quote,
                image: File.open(File.join(Rails.root, 'public/seed_bot.jpg'))
                })
end

5.times do
  GoverningBoard.create({
                name: Faker::Name.name,
                description: Faker::FamilyGuy.quote,
                image: File.open(File.join(Rails.root, 'public/seed_govboard.jpg'))
                })
end

5.times do
  Secretariat.create({
                name: Faker::Name.name,
                description: Faker::FamilyGuy.quote,
                image: File.open(File.join(Rails.root, 'public/seed_secretariat.jpg'))
                })
end

5.times do
  Partner.create({
                name: Faker::Name.name,
                description: Faker::FamilyGuy.quote,
                image: File.open(File.join(Rails.root, 'public/seed_partners.png')),
                amount: 30000
                })
end
