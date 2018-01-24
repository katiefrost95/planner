Given("I visit the tutorials page") do
  tutorials_page.visit_tutorials_page
end

When(/^I click on a tutorial (.*)$/) do |tutorial|
  tutorials_page.find_tutorial(tutorial)
end

Then(/^I should be taken to that tutorial page (.*)$/) do |url|
  expect(current_url).to eq(url)
end
