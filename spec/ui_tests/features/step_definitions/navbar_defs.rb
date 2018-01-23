When(/^I choose the navbar link (.*)$/) do |navbar|
  nav_bar.click_nav_link(navbar)
end

Then(/^I am taken to the correct page (.*)$/) do |url|
  expect(current_url).to eq (url)
end
