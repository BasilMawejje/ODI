Given("I navigate to the board_of_trustees page") do
  visit board_of_trustees_path
end

Given("the following board_of_trustees exist") do |table|
  table.hashes.each do |hash|
    board_of_trustees = FactoryBot.create(:board_of_trustee,
                                      name: "Shondra Donnelly",
                                      description: "Joe, gag on my fat dauber.",
                                      image: "File.open(File.join(Rails.root, 'public/seed_bot.jpg'))")
  end
end
