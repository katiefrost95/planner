When(/^I click on any link in the footer (.*)$/) do |footer_link|
  footer.find_code_of_conduct(footer_link)
end

Then(/^I should be directed to correct page (.*)$/) do |url|
  expect(current_url).to eq url
end

When("I click the slack icon on the footer") do
  footer.click_slack_icon
end

When("I click the github icon on the footer") do
  footer.click_github_icon
end

When("I click the twitter icon on the footer") do
  footer.click_twitter_icon
end

When("I click the facebook icon on the footer") do
  footer.click_facebook_icon
end

Then("I should be redirected to the slack page") do
  expect(current_url).to eq('https://codebar-slack.herokuapp.com/')
end

Then("I should be redirected to the github page") do
  expect(current_url).to eq('https://github.com/codebar')
end

Then("I should be redirected to the twitter page") do
  expect(current_url).to eq('https://twitter.com/codebar')
end

Then("I should be redirected to the facebook page") do
  expect(current_url).to eq('https://www.facebook.com/codebarHQ')
end
