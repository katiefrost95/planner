When(/^I choose the navbar link (.*)$/) do |navbar|
  nav_bar.click_nav_link(navbar)
end

Then(/^I am taken to the correct page (.*)$/) do |url|
  expect(current_url).to eq (url)
end

When("I click on the codebar icon") do
  nav_bar.click_codebar_icon
end

Then("I should be redirected to the homepage") do
  expect(current_url).to eq('http://localhost:3000/')
end
