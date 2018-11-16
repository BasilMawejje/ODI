Given("I navigate to the board_of_trustees page") do
  visit board_of_trustees_path
end

Given("the following board_of_trustees exist") do |table|
  table.hashes.each do |hash|
    image = File.new(Rails.root + "spec/fixtures/seed_bot.jpg")
  end
end
