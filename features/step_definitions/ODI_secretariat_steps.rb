Given("I am on the board_of_trustees page") do
  visit board_of_trustees_path
end

Given("the following secretariats exist") do |table|
  table.hashes.each do |hash|
    secretariats = FactoryBot.create(:secretariat,
                                      name: "Vernie Weber",
                                      description: "A degenerate, am I? Well, you are a festisio! See? I can make up words too, sister.",
                                      image: "File.open(File.join(Rails.root, 'public/seed_secretariat.jpg'))")
  end
end
