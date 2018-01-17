Given("I visit the tutorials page") do
  tutorials_page.visit_tutorials_page
end

When(/^I click on a tutorial I am taken to that tutorial page (.*)$/) do |tutorial|
  tutorials_page.find_tutorial(tutorial)
end
