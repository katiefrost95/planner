Given("I am logged in") do
  homepage_page.visit_homepage
  homepage_page.click_sign_in_link
  sign_in_page.github_username("fake_github123@hotmail.com")
  sign_in_page.github_password("Thisisfake123")
  sign_in_page.click_sign_in_button
  # sign_in_page.click_authorize_button
end

And("I click on dashboard") do
  menu_bar.menu_dashboard
end

Then("I should be able view upcoming workshops in subscribed cities.") do
  dashboard.find_name_on_dashboard
end

When("I click on profile") do
  menu_bar.menu_profile
end

Then("I should be able view my profile details.") do
  expect(profile.find_update_details_button).to be true
end

When("I click on invitations") do
  menu_bar.menu_invitations
end

Then("I should be able to view upcoming workshops or workshops attended") do
  expect(invitations.upcoming_workshops).to be true
  expect(invitations.attended_workshops).to be true
end

And("I am invited to an event") do
  
end

When("I click RSVP to a course") do
  invitations.click_rsvp
end

When("I click get my ticket") do
  invitations.click_get_ticket
end

Then("I receive a message confirming my attendance") do
  pending # Write code here that turns the phrase above into concrete actions
end
