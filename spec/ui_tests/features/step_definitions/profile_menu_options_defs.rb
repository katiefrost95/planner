Given("I am logged in") do
  homepage_page.visit_homepage
  homepage_page.click_sign_in_link
  sign_in_page.github_username("fake_github123@hotmail.com")
  sign_in_page.github_password("Thisisfake123")
  sign_in_page.click_sign_in_button
<<<<<<< HEAD
  sign_in_page.click_authorize_button
=======
>>>>>>> merge_conflicts_branch
end

And("I click on dashboard") do
  menu_bar.menu_dashboard
end

Then("I should be able view upcoming workshops in subscribed cities.") do
  dashboard.find_name_on_dashboard
end

Given("I am on the homepage") do
  homepage_page.visit_homepage
end

When("I click on profile") do
  menu_bar.menu_profile
end

Then("I should be able view my profile details.") do
  expect(profile.find_update_details_button).to be true
end

When("I click on manage subscriptions") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I click to subscribe to a city of my choice as a student") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be successfully subscribing") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on a city I have subscribed too as a student") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should successfully unsubscribe") do
  pending # Write code here that turns the phrase above into concrete actions
end
