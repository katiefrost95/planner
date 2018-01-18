Given("I am logged in") do
  homepage_page.visit_homepage
  nav_bar.click_sign_in_link
  sign_in_page.github_username("fake_github123@hotmail.com")
  sign_in_page.github_password("Thisisfake123")
  sign_in_page.click_sign_in_button
end

And("I click on dashboard") do
  menu_bar.menu_dashboard
end

Then("I should be able view upcoming workshops in subscribed cities.") do
  dashboard.find_name_on_dashboard
end

# Given("I am on the homepage") do
#   homepage_page.visit_homepage
# end

When("I click on profile") do
  menu_bar.menu_profile
end

Then("I should be able view my profile details.") do
  expect(profile.find_update_details_button).to be true
end

And("I click on manage subscriptions") do
  menu_bar.menu_subscriptions
end

And("I click to subscribe to a city of my choice as a student") do
  subscription_page.click_brighton_subscribe
end

Then("I should successfully subscribe") do
  nav_bar.click_menu
  menu_bar.menu_profile
  profile.find_subscription
end


Then("I should successfully unsubscribe") do
  nav_bar.click_menu
  menu_bar.menu_profile
  profile.find_not_subscribed
end

And("I click update my details") do
  menu_bar.menu_details
end

And("I fill in my details with the info I want") do
  update_details.member_name_input("Nigel Noodle")
  update_details.member_pronouns_input("Shee")
  update_details.member_email_input("test@gmail.com")
  update_details.member_mobile_input('00000000')
  update_details.member_description_input("I am a great coder")
  update_details.member_twitter_input('twitter')
end

When("I click save") do
  update_details.click_save
end

Then("my details should be successfully updated") do
  profile.find_words_on_page('Nigel Noodle')
end

And("I don’t fill in the tell me about yourself box") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should remain on the update my details page") do
  pending # Write code here that turns the phrase above into concrete actions
end
