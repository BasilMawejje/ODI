Given("I navigate to the about page") do
  visit about_index_path
end

Then("I should see {string} image") do |string|
  File.new(Rails.root + "spec/fixtures/odi_logo.png")
end


Then("I should see the title {string}") do |string|
  find("h2")
end

Then("I should see the text {string}") do |message|
  expect(page).to have_content message
end

Then("show me the page") do
  #save_and_open_page
end
