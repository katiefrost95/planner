# Given("I am on the codebar homepage") do
#   home_page.visit_homepage
# end

Given("I am subscribed as a coach to one of the locations") do
  homepage_page.visit_homepage
  homepage_page.click_sign_in_link
  sign_in_page.github_username("fake_github123@hotmail.com")
  sign_in_page.github_password("Thisisfake123")
  sign_in_page.click_sign_in_button
  menu_bar.menu_subscriptions
end

When("I click on events link") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I click on a workshop") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I click attend as coach") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I click attend button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should receive the corresponding message") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I click on an event") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I click RSVP as a coach") do
  pending # Write code here that turns the phrase above into concrete actions
end