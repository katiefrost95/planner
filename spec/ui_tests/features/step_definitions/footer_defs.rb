When(/^I click on any link in the footer (.*)$/) do |footer_link|
  footer.find_code_of_conduct(footer_link)
end

Then(/^I should be directed to correct page (.*)$/) do |url|
  expect(current_url).to eq url
end
