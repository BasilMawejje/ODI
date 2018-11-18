Given("the following governing board exist") do |table|
  table.hashes.each do |hash|
    secretariats = FactoryBot.create(:secretariat,
                                      name: "Bart Bartoletti",
                                      description: "I’ve got an idea–an idea so smart that my head would explode if I even began to know what I’m talking about.",
                                      image: "File.open(File.join(Rails.root, 'public/seed_secretariat.jpg'))")
  end
end
